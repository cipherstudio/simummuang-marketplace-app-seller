part of 'forgot_password_bloc.dart';

@freezed
class ForgotPasswordBlocEvent with _$ForgotPasswordBlocEvent {
  const factory ForgotPasswordBlocEvent.requestOTP({
    String? emailOrPhoneNumber,
  }) = _RequestOTP;
  const factory ForgotPasswordBlocEvent.emailOrPhoneChange(String value) =
      _EmailOrPhoneChange;
  const factory ForgotPasswordBlocEvent.back() = _Back;
  const factory ForgotPasswordBlocEvent.verifySendedOTP(
    String? verificationCode,
  ) = _VerifySendedOTP;
}
