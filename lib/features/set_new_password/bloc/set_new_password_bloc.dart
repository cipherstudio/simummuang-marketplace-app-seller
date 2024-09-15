import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smm_application/features/login_page/bloc/login_bloc.dart';

part './set_new_password_bloc_event.dart';
part './set_new_password_bloc_state.dart';
part 'set_new_password_bloc.freezed.dart';

class SetNewPasswordBloc
    extends Bloc<SetNewPasswordBlocEvent, SetNewPasswordBlocState> {
  SetNewPasswordBloc(super.initialState);
}
