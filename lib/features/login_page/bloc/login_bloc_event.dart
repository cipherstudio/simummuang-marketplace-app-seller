part of 'login_bloc.dart';

@Freezed()
class LoginBlocEvent with _$LoginBlocEvent {
  const factory LoginBlocEvent.initialize() = _Initialize;
  const factory LoginBlocEvent.initialPasswordTextFormField() =
      _InitialPasswordTextFormField;

  const factory LoginBlocEvent.login() = _Login;
}
