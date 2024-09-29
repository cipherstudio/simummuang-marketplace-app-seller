part of 'set_new_password_bloc.dart';

@Freezed()
class SetNewPasswordBlocEvent with _$SetNewPasswordBlocEvent {
  const factory SetNewPasswordBlocEvent.initialize() = _Initialize;
  const factory SetNewPasswordBlocEvent.resetPassword(
      {required String email, required String newPassword}) = _ResetPassword;
}
