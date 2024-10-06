part of 'forgot_password_bloc.dart';

enum ForgotPasswordPageState { reqOTP, verifyOTP, setNewPassword }

@freezed
class ForgotPasswordBlocState with _$ForgotPasswordBlocState {
  const factory ForgotPasswordBlocState({
    @Default(ForgotPasswordPageState.reqOTP)
    ForgotPasswordPageState forgotPasswordPageState,
    @Default('') String emailOrPhoneInput,
    @Default(UIInitial()) UIStatus verifySendedOTPStatus,
    @Default(UIInitial()) UIStatus requestOtpUiStatus,
    @Default(true) bool enableRequestOTP,
  }) = _ForgotPasswordBlocState;
}
