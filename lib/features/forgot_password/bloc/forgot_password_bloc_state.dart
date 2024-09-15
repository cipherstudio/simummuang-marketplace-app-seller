part of 'forgot_password_bloc.dart';

enum ForgotPasswordPageState { reqOTP, verifyOTP, setNewPassword }

@freezed
class ForgotPasswordBlocState with _$ForgotPasswordBlocState {
  const factory ForgotPasswordBlocState({
    @Default(ForgotPasswordPageState.reqOTP)
    ForgotPasswordPageState forgotPasswordPageState,
    @Default('') String emailOrPhoneInput,
    bool? verifySendedOTPSuccess,
  }) = _ForgotPasswordBlocState;
}
