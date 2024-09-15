part of 'set_new_password_bloc.dart';

@Freezed()
class SetNewPasswordBlocState with _$SetNewPasswordBlocState {
  const factory SetNewPasswordBlocState({
    @Default(UIInitial()) UIStatus status,
  }) = _SetNewPasswordBlocState;
}
