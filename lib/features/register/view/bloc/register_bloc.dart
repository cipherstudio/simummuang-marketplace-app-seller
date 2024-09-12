import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_bloc_event.dart';
part 'register_bloc_state.dart';
part 'register_bloc.freezed.dart';

class RegisterBloc extends Bloc<RegisterBlocEvent, RegisterBlocState> {
  RegisterBloc() : super(RegisterBlocState()) {
    on<RegisterBlocEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
