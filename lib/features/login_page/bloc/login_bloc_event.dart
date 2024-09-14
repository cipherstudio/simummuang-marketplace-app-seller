part of 'login_bloc.dart';

@Freezed()
class LoginBlocEvent with _$LoginBlocEvent {
  const factory LoginBlocEvent.initialize() = _Initialize;
  const factory LoginBlocEvent.login() = _Login;
  const factory LoginBlocEvent.validateForm(
      {required GlobalKey<FormState> formKey}) = _ValidateForm;
}
