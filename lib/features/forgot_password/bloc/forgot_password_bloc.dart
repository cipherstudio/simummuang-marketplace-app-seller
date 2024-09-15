import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'forgot_password_bloc_event.dart';
part 'forgot_password_bloc_state.dart';
part 'forgot_password_bloc.freezed.dart';

class ForgotPasswordBloc
    extends Bloc<ForgotPasswordBlocEvent, ForgotPasswordBlocState> {
  ForgotPasswordBloc() : super(const ForgotPasswordBlocState()) {
    on<_Initial>(_onInit);
    on<_RequestOTP>(_onRequestOTP);
    on<_EmailOrPhoneChange>(_onEmailOrPhoneChange);
    on<_Back>(_onBack);
  }
  ScrollController scrollController = ScrollController();

  FutureOr<void> _onInit(
    _Initial event,
    Emitter<ForgotPasswordBlocState> emit,
  ) async {
    emit(
      state.copyWith(),
    );
  }

  FutureOr<void> _onRequestOTP(
    _RequestOTP event,
    Emitter<ForgotPasswordBlocState> emit,
  ) async {
    scrollController.jumpTo(scrollController.position.minScrollExtent);
    emit(
      state.copyWith(
          forgotPasswordPageState: ForgotPasswordPageState.verifyOTP),
    );
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
}
