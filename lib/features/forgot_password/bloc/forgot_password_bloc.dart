import 'dart:async';

import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:phone_numbers_parser/phone_numbers_parser.dart';
import 'package:smm_application/core/bloc_core/ui_status.dart';
import 'package:smm_application/domain/data/models/otp/request_otp_request_body_model.dart';
import 'package:smm_application/domain/data/models/otp/request_otp_response_model.dart';
import 'package:smm_application/domain/data/models/otp/verify_otp_request_body_model.dart';
import 'package:smm_application/domain/data/models/otp/verify_otp_response_model.dart';
import 'package:smm_application/domain/repository/otp_repository.dart';
import 'package:smm_application/extensions/extension.dart';
import 'package:smm_application/features/forgot_password/exceptions/forgot_password_exception.dart';

part 'forgot_password_bloc_event.dart';
part 'forgot_password_bloc_state.dart';
part 'forgot_password_bloc.freezed.dart';

class ForgotPasswordBloc
    extends Bloc<ForgotPasswordBlocEvent, ForgotPasswordBlocState> {
  ForgotPasswordBloc({
    required OtpRepository otpRepository,
  })  : _otpRepository = otpRepository,
        super(const ForgotPasswordBlocState()) {
    on<_Initial>(_onInit);
    on<_RequestOTP>(_onRequestOTP);
    on<_EmailOrPhoneChange>(_onEmailOrPhoneChange);
    on<_Back>(_onBack);
    on<_VerifySendedOTP>(_onVerifySendedOTP);
    on<_InitialEmailOrPhoneNumberFormField>(
        _onInitialEmailOrPhoneNumberFormField);
  }

  final OtpRepository _otpRepository;
  ScrollController scrollController = ScrollController();

  RequestOtpResponseModel? _requestOtpResponseModel;

  RequestOtpResponseModel? get requestOtpResponseModel {
    return _requestOtpResponseModel;
  }

  FutureOr<void> _onInit(
    _Initial event,
    Emitter<ForgotPasswordBlocState> emit,
  ) async {
    emit(
      state.copyWith(status: const UILoadSuccess()),
    );
  }

  Future<void> _onInitialEmailOrPhoneNumberFormField(
    _InitialEmailOrPhoneNumberFormField event,
    Emitter<ForgotPasswordBlocState> emit,
  ) async {
    emit(
      state.copyWith(
        emailOrPhoneNumberFieldProperties: EmailOrPhoneNumberProperties(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: (value) => null,
        ),
      ),
    );
  }

  FutureOr<void> _onRequestOTP(
    _RequestOTP event,
    Emitter<ForgotPasswordBlocState> emit,
  ) async {
    try {
      String? validationMessage;

      bool isValid = false;

      String? emailOrPhoneNumber = event.emailOrPhoneNumber;

      PhoneNumber phoneNumberInstance = PhoneNumber.parse(
        emailOrPhoneNumber ?? '',
        callerCountry: IsoCode.TH,
      );

      if (emailOrPhoneNumber.stringNullOrEmpty) {
        validationMessage = 'โปรดระบุอีเมล์ หรือ เบอร์โทรศัพท์';
      } else {
        RegExp regExp = RegExp(r'^\d+$');
        // เอา RegEx มาเช็คว่า input เป็น numeric หมดไหม
        if (regExp.hasMatch(emailOrPhoneNumber!)) {
          // เข้าไป validate phone number
          if (!phoneNumberInstance.isValid()) {
            validationMessage = 'รูปแบบเบอร์มือถือไม่ถูกต้อง';
          } else {
            isValid = true;
          }
        } else {
          validationMessage = 'รูปแบบเบอร์มือถือไม่ถูกต้อง';
          // เข้าไปเช็ค email ต่อ
          // if (!EmailValidator.validate(emailOrPhoneNumber)) {
          //   validationMessage = 'รูปแบบอีเมล์ไม่ถูกต้อง';
          // } else {
          //   isValid = true;
          // }
        }
      }

      if (!isValid) {
        emit(
          state.copyWith(
            emailOrPhoneNumberFieldProperties: EmailOrPhoneNumberProperties(
              autovalidateMode: AutovalidateMode.always,
              validator: (value) => validationMessage,
            ),
          ),
        );
        return;
      }

      emit(
        state.copyWith(
          requestOtpUiStatus: const UILoading(),
        ),
      );

      RequestOtpResponseModel requestOtpResponse =
          await _otpRepository.requestOtp(
        requestBody: RequestOtpRequestBody(
            number: event.emailOrPhoneNumber ?? '', mode: 'reset_pwd_seller'),
      );
      if (requestOtpResponse.status == 'success') {
        _requestOtpResponseModel = requestOtpResponse;

        scrollController.jumpTo(scrollController.position.minScrollExtent);
        emit(
          state.copyWith(
            requestOtpUiStatus: const UILoadSuccess(),
            emailOrPhoneInput: event.emailOrPhoneNumber ?? '',
            forgotPasswordPageState: ForgotPasswordPageState.verifyOTP,
            emailOrPhoneNumberFieldProperties: EmailOrPhoneNumberProperties(
              autovalidateMode: AutovalidateMode.always,
              validator: (value) => null,
            ),
          ),
        );
      } else {
        emit(
          state.copyWith(
            requestOtpUiStatus: UILoadFailed(
              message: requestOtpResponse.message,
            ),
          ),
        );
      }
    } catch (e) {
      emit(
        state.copyWith(
          requestOtpUiStatus: UILoadFailed(
            message: e.toString(),
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
