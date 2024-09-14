import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smm_application/core/bloc_core/ui_status.dart';
import 'package:smm_application/core/enums/app_enums.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';

part './login_bloc_event.dart';
part './login_bloc_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginBlocEvent, LoginBlocState> {
  LoginBloc() : super(const LoginBlocState()) {
    on<_Initialize>(
      _onInitialize,
      transformer: droppable(),
    );

    on<_Login>(
      _onLogin,
      transformer: droppable(),
    );

    on<_ValidateForm>(
      _onValidateForm,
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
          checkEmailStatus: const UILoadSuccess(),
        ),
      );
    } catch (e) {
      // do nothing.
    }
  }

  Future<void> _onLogin(
    _Login event,
    Emitter<LoginBlocState> emit,
  ) async {
    try {
      emit(
        state.copyWith(
          checkEmailStatus: const UIInitial(),
        ),
      );
      emit(
        state.copyWith(
          passwordOptionEnum: PasswordOptionEnum.forgotOnly,
          emailValidatorMessage: 'ไม่พบอีเมล์นี้ในระบบ',
          validateForm: true,
          checkEmailStatus: const UILoadSuccess(),
        ),
      );
    } catch (e) {
      // do nothing.
    }
  }

  Future<void> _onValidateForm(
    _ValidateForm event,
    Emitter<LoginBlocState> emit,
  ) async {
    // event.formKey.currentState!.validate();
  }
}
