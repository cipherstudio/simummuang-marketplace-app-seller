import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smm_application/core/bloc_core/ui_status.dart';

part './set_new_password_bloc_event.dart';
part './set_new_password_bloc_state.dart';
part 'set_new_password_bloc.freezed.dart';

class SetNewPasswordBloc
    extends Bloc<SetNewPasswordBlocEvent, SetNewPasswordBlocState> {
  SetNewPasswordBloc() : super(const SetNewPasswordBlocState()) {
    on<_Initialize>(
      _onInitialize,
      transformer: droppable(),
    );
  }

  FutureOr<void> _onInitialize(
      _Initialize event, Emitter<SetNewPasswordBlocState> emit) {
    try {
      emit(
        state.copyWith(
          status: const UIStatus.loadSuccess(),
        ),
      );
    } catch (e) {
      // do nothing.
    }
  }
}
