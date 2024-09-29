import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smm_application/core/bloc_core/ui_status.dart';
import 'package:smm_application/domain/data/models/resetPassword/reset_password_request_model.dart';
import 'package:smm_application/domain/repository/auth_repository.dart';

part './set_new_password_bloc_event.dart';
part './set_new_password_bloc_state.dart';
part 'set_new_password_bloc.freezed.dart';

class SetNewPasswordBloc
    extends Bloc<SetNewPasswordBlocEvent, SetNewPasswordBlocState> {
  SetNewPasswordBloc({
    required AuthRepository authRepository,
  }) : super(const SetNewPasswordBlocState()) {
    _authRepository = authRepository;
    on<_Initialize>(
      _onInitialize,
      transformer: droppable(),
    );
    on<_ResetPassword>(
      _onResetPassword,
      transformer: droppable(),
    );
  }
  late final AuthRepository _authRepository;
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController confirmNewPasswordController =
      TextEditingController();
  FutureOr<void> _onInitialize(
      _Initialize event, Emitter<SetNewPasswordBlocState> emit) {
    try {
      emit(
        state.copyWith(
          status: const UIStatus.initial(),
        ),
      );
    } catch (e) {
      // do nothing.
    }
  }

  FutureOr<void> _onResetPassword(
      _ResetPassword event, Emitter<SetNewPasswordBlocState> emit) async {
    try {
      emit(
        state.copyWith(
          status: const UIStatus.loading(),
        ),
      );
      final bool result = await _authRepository.resetPassword(
          body: ResetPasswordRequestModel(
              email: event.email,
              resetToken: 'resetToken',
              newPassword: event.newPassword));
      if (result) {
        emit(
          state.copyWith(
            status: const UIStatus.loadSuccess(),
          ),
        );
      } else {
        emit(
          state.copyWith(
            status: const UIStatus.loadFailed(message: 'Error'),
          ),
        );
      }
    } catch (e) {
      emit(
        state.copyWith(
          status: UIStatus.loadFailed(message: e.toString()),
        ),
      );
    }
  }
}
