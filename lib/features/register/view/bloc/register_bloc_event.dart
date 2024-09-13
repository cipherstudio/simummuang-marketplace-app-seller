part of 'register_bloc.dart';

@freezed
class RegisterBlocEvent with _$RegisterBlocEvent {
  const factory RegisterBlocEvent.init() = _Initial;
  const factory RegisterBlocEvent.finishInformationForm() =
      _FinishInformationForm;
  const factory RegisterBlocEvent.back() = _Back;
}
