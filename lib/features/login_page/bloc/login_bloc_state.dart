part of 'login_bloc.dart';

@Freezed()
class LoginBlocState with _$LoginBlocState {
  factory LoginBlocState({
    @Default(UIInitial()) UIStatus status,
    MobileLoginPasswordResponseModel? loginData,
    @Default(PasswordOptionEnum.rememberAndForgot)
    PasswordOptionEnum passwordOptionEnum,
    @Default(
      EmailFieldProperties(
        autovalidateMode: AutovalidateMode.disabled,
      ),
    )
    EmailFieldProperties emailFieldProperties,
    @Default(
      PasswordFieldProperties(
        autovalidateMode: AutovalidateMode.disabled,
      ),
    )
    PasswordFieldProperties passwordFieldProperties,
  }) = _LoginBlocState;
}

class EmailFieldProperties {
  final AutovalidateMode autovalidateMode;
  final FormFieldValidator<String>? validator;

  const EmailFieldProperties({
    required this.autovalidateMode,
    this.validator,
  });
}

class PasswordFieldProperties {
  final AutovalidateMode autovalidateMode;
  final FormFieldValidator<String>? validator;

  const PasswordFieldProperties({
    required this.autovalidateMode,
    this.validator,
  });
}
