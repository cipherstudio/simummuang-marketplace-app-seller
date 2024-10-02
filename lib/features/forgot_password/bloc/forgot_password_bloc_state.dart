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
    @Default(UIInitial()) UIStatus status,
    @Default(
      EmailOrPhoneNumberProperties(
        autovalidateMode: AutovalidateMode.disabled,
      ),
    )
    EmailOrPhoneNumberProperties emailOrPhoneNumberFieldProperties,
  }) = _ForgotPasswordBlocState;
}

class EmailOrPhoneNumberProperties {
  final AutovalidateMode autovalidateMode;
  final FormFieldValidator<String>? validator;

  const EmailOrPhoneNumberProperties({
    required this.autovalidateMode,
    this.validator,
  });
}
