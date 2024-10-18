import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smm_seller_application/core/authenticator/authenticator_storage.dart';
import 'package:smm_seller_application/core/bloc_core/ui_status.dart';
import 'package:smm_seller_application/domain/data/models/login/login_mobile_request_model.dart';
import 'package:smm_seller_application/domain/data/models/login/login_mobile_response_model.dart';
import 'package:smm_seller_application/domain/data/models/otp/request_otp_request_body_model.dart';
import 'package:smm_seller_application/domain/data/models/otp/request_otp_response_model.dart';
import 'package:smm_seller_application/domain/data/models/otp/verify_otp_request_body_model.dart';
import 'package:smm_seller_application/domain/data/models/otp/verify_otp_response_model.dart';
import 'package:smm_seller_application/domain/repository/auth_repository.dart';
import 'package:smm_seller_application/domain/repository/otp_repository.dart';
import 'package:smm_seller_application/extensions/extension.dart';
import 'package:smm_seller_application/features/forgot_password/exceptions/forgot_password_exception.dart';

part 'forgot_password_bloc_event.dart';
part 'forgot_password_bloc_state.dart';
part 'forgot_password_bloc.freezed.dart';

class ForgotPasswordBloc
    extends Bloc<ForgotPasswordBlocEvent, ForgotPasswordBlocState> {
  ForgotPasswordBloc({
    required OtpRepository otpRepository,
    required AuthRepository authRepository,
  })  : _otpRepository = otpRepository,
        _authRepository = authRepository,
        super(const ForgotPasswordBlocState()) {
    on<_RequestOTP>(_onRequestOTP);
    on<_EmailOrPhoneChange>(_onEmailOrPhoneChange);
    on<_Back>(_onBack);
    on<_VerifySendedOTP>(_onVerifySendedOTP);
    on<_SetEnableOTPButton>(_onSetEnableOTPButton);
  }

  final OtpRepository _otpRepository;
  final AuthRepository _authRepository;

  ScrollController scrollController = ScrollController();
  TextEditingController emailOrPhoneNumberInputController =
      TextEditingController();
  final _storage = AuthenticatorStorage();
  RequestOtpResponseModel? _requestOtpResponseModel;

  RequestOtpResponseModel? get requestOtpResponseModel {
    return _requestOtpResponseModel;
  }

  FutureOr<void> _onRequestOTP(
    _RequestOTP event,
    Emitter<ForgotPasswordBlocState> emit,
  ) async {
    try {
      emit(
        state.copyWith(
          requestOtpUiStatus: const UILoading(),
        ),
      );
      RequestOtpResponseModel? storageOTP = _storage.getOTPResponse();
      if (storageOTP != null &&
          storageOTP.number == emailOrPhoneNumberInputController.text &&
          (storageOTP.expiredTime?.isAfter(DateTime.now()) ?? false)) {
        await Future.delayed(const Duration(milliseconds: 200));
        _requestOtpResponseModel = storageOTP;
        scrollController.jumpTo(scrollController.position.minScrollExtent);
        emit(
          state.copyWith(
            enableRequestOTP: false,
            requestOtpUiStatus: const UILoadSuccess(),
            emailOrPhoneInput: emailOrPhoneNumberInputController.text,
            forgotPasswordPageState: ForgotPasswordPageState.verifyOTP,
          ),
        );
      } else {
        LoginMobileResponseModel loginMobileResponse =
            await _authRepository.loginMobile(
          body: LoginMobileRequestModel(
            mobile: emailOrPhoneNumberInputController.text,
          ),
        );

        if (loginMobileResponse.status == 'error' &&
            loginMobileResponse.message == 'customer not found') {
          throw const ForgotPasswordException(
              message: 'ไม่พบเบอร์มือถือนี้ในระบบ');
        }

        RequestOtpResponseModel requestOtpResponse =
            await _otpRepository.requestOtp(
          requestBody: RequestOtpRequestBody(
              number: emailOrPhoneNumberInputController.text,
              mode: 'reset_pwd_seller'),
        );
        if (requestOtpResponse.status == 'success') {
          _requestOtpResponseModel = requestOtpResponse.copyWith(
              expiredTime: DateTime.now().add(const Duration(minutes: 5)));

          scrollController.jumpTo(scrollController.position.minScrollExtent);
          emit(
            state.copyWith(
              enableRequestOTP: false,
              requestOtpUiStatus: const UILoadSuccess(),
              emailOrPhoneInput: emailOrPhoneNumberInputController.text,
              forgotPasswordPageState: ForgotPasswordPageState.verifyOTP,
            ),
          );
          _storage.setOTPResponse(_requestOtpResponseModel);
        } else {
          emit(
            state.copyWith(
              requestOtpUiStatus: UILoadFailed(
                message: requestOtpResponse.message,
              ),
            ),
          );
        }
      }
    } catch (e) {
      emit(
        state.copyWith(
          requestOtpUiStatus: UILoadFailed(
            message: e.toString(),
            error: e,
          ),
        ),
      );
    }
  }

  FutureOr<void> _onBack(
    _Back event,
    Emitter<ForgotPasswordBlocState> emit,
  ) async {
    scrollController.jumpTo(scrollController.position.minScrollExtent);
    emit(
      state.copyWith(forgotPasswordPageState: ForgotPasswordPageState.reqOTP),
    );
  }

  FutureOr<void> _onSetEnableOTPButton(
    _SetEnableOTPButton event,
    Emitter<ForgotPasswordBlocState> emit,
  ) async {
    emit(
      state.copyWith(enableRequestOTP: true),
    );
  }

  FutureOr<void> _onEmailOrPhoneChange(
    _EmailOrPhoneChange event,
    Emitter<ForgotPasswordBlocState> emit,
  ) async {
    emit(
      state.copyWith(emailOrPhoneInput: event.value),
    );
  }

  FutureOr<void> _onVerifySendedOTP(
    _VerifySendedOTP event,
    Emitter<ForgotPasswordBlocState> emit,
  ) async {
    try {
      emit(
        state.copyWith(
          verifySendedOTPStatus: const UIInitial(),
        ),
      );
      String? verificationCode = event.verificationCode;

      String? validateMessage;

      bool isValid = false;

      if (verificationCode.stringNullOrEmpty) {
        validateMessage = 'กรุณาป้อน OTP';
      } else {
        RegExp regExp = RegExp(r'^\d+$');
        if (!regExp.hasMatch(verificationCode!)) {
          // ถ้าไม่ใช้ nummeric ก็ให้ error
          validateMessage = 'OTP ต้องเป็นตัวเลขเท่านั้น';
        } else {
          if (verificationCode.length < 6) {
            validateMessage = 'กรุณาป้อน OTP ให้ครบ 6 หลัก';
          } else {
            isValid = true;
          }
        }
      }

      if (!isValid) {
        throw ForgotPasswordException(message: validateMessage ?? '');
      }

      emit(
        state.copyWith(
          verifySendedOTPStatus: const UILoading(),
        ),
      );

      VerifyOtpResponseModel verifyOtpResponse = await _otpRepository.verifyOtp(
        requestBody: VerifyOtpRequestBodyModel(
          token: _requestOtpResponseModel!.token,
          code: event.verificationCode!,
        ),
      );

      if (verifyOtpResponse.status == 'error') {
        throw ForgotPasswordException(message: verifyOtpResponse.message);
      }

      emit(
        state.copyWith(
          verifySendedOTPStatus: const UILoadSuccess(),
        ),
      );
    } on ForgotPasswordException catch (e) {
      emit(
        state.copyWith(
          verifySendedOTPStatus: UILoadFailed(
            message: '',
            error: e,
          ),
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          verifySendedOTPStatus: UILoadFailed(message: e.toString()),
        ),
      );
    }
  }
}
