import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smm_seller_application/core/authenticator/auth_exception.dart';
import 'package:smm_seller_application/core/bloc_core/ui_status.dart';
import 'package:smm_seller_application/core/enums/app_enums.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:smm_seller_application/domain/data/models/login/login_request_model.dart';
import 'package:smm_seller_application/domain/data/models/login/mobile_login_password_response_model.dart';
import 'package:smm_seller_application/domain/repository/auth_repository.dart';
import 'package:smm_seller_application/extensions/string_extension.dart';

part './login_bloc_event.dart';
part './login_bloc_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginBlocEvent, LoginBlocState> {
  LoginBloc({
    required AuthRepository authRepository,
  }) : super(LoginBlocState()) {
    _authRepository = authRepository;

    on<_Initialize>(
      _onInitialize,
      transformer: droppable(),
    );

    on<_Login>(
      _onLogin,
      transformer: droppable(),
    );

    on<_InitialEmailTextFormField>(
      _onInitialEmailTextFormField,
      transformer: droppable(),
    );

    on<_InitialPasswordTextFormField>(
      _onInitialPasswordTextFormField,
      transformer: droppable(),
    );
  }
  late final AuthRepository _authRepository;

  Future<void> _onInitialize(
    _Initialize event,
    Emitter<LoginBlocState> emit,
  ) async {
    try {
      emit(
        state.copyWith(
          status: const UIInitial(),
        ),
      );
    } catch (e) {
      // do nothing.
    }
  }

  Future<void> _onInitialEmailTextFormField(
    _InitialEmailTextFormField event,
    Emitter<LoginBlocState> emit,
  ) async {
    emit(
      state.copyWith(
        emailFieldProperties: EmailFieldProperties(
          autovalidateMode: AutovalidateMode.always,
          validator: (value) => null,
        ),
      ),
    );
  }

  Future<void> _onInitialPasswordTextFormField(
    _InitialPasswordTextFormField event,
    Emitter<LoginBlocState> emit,
  ) async {
    emit(
      state.copyWith(
        passwordFieldProperties: PasswordFieldProperties(
          autovalidateMode: AutovalidateMode.always,
          validator: (value) => null,
        ),
      ),
    );
  }

  Future<void> _onLogin(
    _Login event,
    Emitter<LoginBlocState> emit,
  ) async {
    try {
      String? emailInput = event.mobileNumberTextFieldController?.text;
      String? passwordInput = event.passwordTextFieldController?.text;

      emit(
        state.copyWith(status: const UIStatus.loading()),
      );
      final MobileLoginPasswordResponseModel loginData =
          await _authRepository.login(
        body: LoginRequestModel(
            mobile: emailInput ?? '', password: passwordInput ?? ''),
      );

      if (loginData.status == 'error') {
        throw AuthenticatorExeption(message: loginData.message);
      }

      emit(
        state.copyWith(
          status: const UILoadSuccess(),
          loginData: loginData,
        ),
      );
    } on AuthenticatorExeption catch (e) {
      emit(
        state.copyWith(
          status: UIStatus.loadFailed(
            message: e.toString(),
            error: e,
          ),
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(status: UIStatus.loadFailed(message: e.toString())),
      );
    }
  }
}
