part of 'forgot_password_bloc.dart';

@freezed
class ForgotPasswordBlocEvent with _$ForgotPasswordBlocEvent {
  const factory ForgotPasswordBlocEvent.init() = _Initial;
  const factory ForgotPasswordBlocEvent.requestOTP() = _RequestOTP;
  const factory ForgotPasswordBlocEvent.emailOrPhoneChange(String value) =
      _EmailOrPhoneChange;
  const factory ForgotPasswordBlocEvent.back() = _Back;
}
