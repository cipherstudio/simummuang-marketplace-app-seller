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
          autovalidateMode: AutovalidateMode.disabled,
          validator: null,

          // checkEmailStatus: const UIInitial(),
          // autovalidateMode: AutovalidateMode.onUserInteraction,
        ),
      );
      // add(const _InitialPasswordTextFormField());
    } catch (e) {
      // do nothing.
    }
  }

  Future<void> _onInitialPasswordTextFormField(
    _InitialPasswordTextFormField event,
    Emitter<LoginBlocState> emit,
  ) async {
    emit(
      state.copyWith(
        // checkEmailStatus: const UIInitial(),
        autovalidateMode: AutovalidateMode.always,
        validator: null,
      ),
    );
  }

  Future<void> _onLogin(
    _Login event,
    Emitter<LoginBlocState> emit,
  ) async {
    try {
      emit(
        state.copyWith(
          passwordOptionEnum: PasswordOptionEnum.forgotOnly,
          // checkEmailStatus: const UILoadSuccess(),
          autovalidateMode: AutovalidateMode.always,
          validator: (value) {
            if (value!.isEmpty) {
              return null;
            }
            return 'ไม่พบอีเมล์นี้ในระบบ';
          },
        ),
      );
    } catch (e) {
      // do nothing.
    }
  }
}
