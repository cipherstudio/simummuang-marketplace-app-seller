import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_bloc_event.dart';
part 'register_bloc_state.dart';
part 'register_bloc.freezed.dart';

class RegisterBloc extends Bloc<RegisterBlocEvent, RegisterBlocState> {
  RegisterBloc() : super(const RegisterBlocState()) {
    on<_Initial>(_onInit);
    on<_FinishInformationForm>(_onSaveInformation);
    on<_Back>(_onBack);
  }
  ScrollController scrollController = ScrollController();

  FutureOr<void> _onInit(
    _Initial event,
    Emitter<RegisterBlocState> emit,
  ) async {
    emit(
      state.copyWith(),
    );
  }

  FutureOr<void> _onSaveInformation(
    _FinishInformationForm event,
    Emitter<RegisterBlocState> emit,
  ) async {
    scrollController.jumpTo(scrollController.position.minScrollExtent);
    emit(
      state.copyWith(registerPageState: RegisterPageState.confirmConsent),
    );
  }

  FutureOr<void> _onBack(
    _Back event,
    Emitter<RegisterBlocState> emit,
  ) async {
    scrollController.jumpTo(scrollController.position.minScrollExtent);
    emit(
      state.copyWith(registerPageState: RegisterPageState.informationForm),
    );
  }
}
