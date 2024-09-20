import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smm_application/core/bloc_core/ui_status.dart';
import 'package:smm_application/core/enums/app_enums.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:smm_application/extensions/string_extension.dart';

part './login_bloc_event.dart';
part './login_bloc_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginBlocEvent, LoginBlocState> {
  LoginBloc() : super(LoginBlocState()) {
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

  Future<void> _onInitialize(
    _Initialize event,
    Emitter<LoginBlocState> emit,
  ) async {
    try {
      emit(
        state.copyWith(
          status: const UILoadSuccess(),
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
      String? emailValidationMessage;
      String? passwordValidationMessage;

      String? emailInput = event.emailTextFieldController?.text;
      String? passwordInput = event.passwordTextFieldController?.text;

      if (emailInput.stringNullOrEmpty) {
        emailValidationMessage = 'โปรดระบุอีเมล์';
      } else {
        if (!EmailValidator.validate(emailInput ?? '')) {
          emailValidationMessage = 'อีเมล์ไม่ถูกต้อง';
        }

        if (emailInput == 'notexists@gmail.com') {
          emailValidationMessage = 'ไม่พบอีเมล์นี้ในระบบ';
        }
      }

      if (passwordInput == '123456') {
        passwordValidationMessage = 'รหัสผ่านไม่ถูกต้อง';
      }

      emit(
        state.copyWith(
          passwordOptionEnum: PasswordOptionEnum.forgotOnly,
          emailFieldProperties: EmailFieldProperties(
            autovalidateMode: AutovalidateMode.always,
            validator: (value) => emailValidationMessage,
          ),
          passwordFieldProperties: PasswordFieldProperties(
            autovalidateMode: AutovalidateMode.always,
            validator: (value) => passwordValidationMessage,
          ),
        ),
      );
    } catch (e) {
      // do nothing.
    }
  }
}
