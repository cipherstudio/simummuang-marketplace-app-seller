part of 'login_bloc.dart';

@Freezed()
class LoginBlocState with _$LoginBlocState {
  const factory LoginBlocState({
    @Default(UIInitial()) UIStatus status,
    @Default(UIInitial()) UIStatus checkEmailStatus,
    @Default(UIInitial()) UIStatus checkPasswordStatus,
    @Default(UIInitial()) UIStatus passwordOptionStatus,
    @Default(PasswordOptionEnum.rememberAndForgot)
    PasswordOptionEnum passwordOptionEnum,
    @Default(AutovalidateMode.disabled) AutovalidateMode autovalidateMode,
    FormFieldValidator<String>? validator,
  }) = _LoginBlocState;
}
