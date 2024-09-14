part of 'register_bloc.dart';

enum RegisterPageState { informationForm, confirmConsent }

@freezed
class RegisterBlocState with _$RegisterBlocState {
  const factory RegisterBlocState(
      {@Default(RegisterPageState.informationForm)
      RegisterPageState registerPageState}) = _RegisterBlocState;
}
