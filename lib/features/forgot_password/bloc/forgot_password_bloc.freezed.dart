// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forgot_password_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ForgotPasswordBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String emailOrPhoneNumber) requestOTP,
    required TResult Function(String value) emailOrPhoneChange,
    required TResult Function() back,
    required TResult Function(String? verificationCode) verifySendedOTP,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String emailOrPhoneNumber)? requestOTP,
    TResult? Function(String value)? emailOrPhoneChange,
    TResult? Function()? back,
    TResult? Function(String? verificationCode)? verifySendedOTP,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String emailOrPhoneNumber)? requestOTP,
    TResult Function(String value)? emailOrPhoneChange,
    TResult Function()? back,
    TResult Function(String? verificationCode)? verifySendedOTP,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) init,
    required TResult Function(_RequestOTP value) requestOTP,
    required TResult Function(_EmailOrPhoneChange value) emailOrPhoneChange,
    required TResult Function(_Back value) back,
    required TResult Function(_VerifySendedOTP value) verifySendedOTP,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? init,
    TResult? Function(_RequestOTP value)? requestOTP,
    TResult? Function(_EmailOrPhoneChange value)? emailOrPhoneChange,
    TResult? Function(_Back value)? back,
    TResult? Function(_VerifySendedOTP value)? verifySendedOTP,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? init,
    TResult Function(_RequestOTP value)? requestOTP,
    TResult Function(_EmailOrPhoneChange value)? emailOrPhoneChange,
    TResult Function(_Back value)? back,
    TResult Function(_VerifySendedOTP value)? verifySendedOTP,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordBlocEventCopyWith<$Res> {
  factory $ForgotPasswordBlocEventCopyWith(ForgotPasswordBlocEvent value,
          $Res Function(ForgotPasswordBlocEvent) then) =
      _$ForgotPasswordBlocEventCopyWithImpl<$Res, ForgotPasswordBlocEvent>;
}

/// @nodoc
class _$ForgotPasswordBlocEventCopyWithImpl<$Res,
        $Val extends ForgotPasswordBlocEvent>
    implements $ForgotPasswordBlocEventCopyWith<$Res> {
  _$ForgotPasswordBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ForgotPasswordBlocEventCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ForgotPasswordBlocEvent.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String emailOrPhoneNumber) requestOTP,
    required TResult Function(String value) emailOrPhoneChange,
    required TResult Function() back,
    required TResult Function(String? verificationCode) verifySendedOTP,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String emailOrPhoneNumber)? requestOTP,
    TResult? Function(String value)? emailOrPhoneChange,
    TResult? Function()? back,
    TResult? Function(String? verificationCode)? verifySendedOTP,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String emailOrPhoneNumber)? requestOTP,
    TResult Function(String value)? emailOrPhoneChange,
    TResult Function()? back,
    TResult Function(String? verificationCode)? verifySendedOTP,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) init,
    required TResult Function(_RequestOTP value) requestOTP,
    required TResult Function(_EmailOrPhoneChange value) emailOrPhoneChange,
    required TResult Function(_Back value) back,
    required TResult Function(_VerifySendedOTP value) verifySendedOTP,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? init,
    TResult? Function(_RequestOTP value)? requestOTP,
    TResult? Function(_EmailOrPhoneChange value)? emailOrPhoneChange,
    TResult? Function(_Back value)? back,
    TResult? Function(_VerifySendedOTP value)? verifySendedOTP,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? init,
    TResult Function(_RequestOTP value)? requestOTP,
    TResult Function(_EmailOrPhoneChange value)? emailOrPhoneChange,
    TResult Function(_Back value)? back,
    TResult Function(_VerifySendedOTP value)? verifySendedOTP,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ForgotPasswordBlocEvent {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$RequestOTPImplCopyWith<$Res> {
  factory _$$RequestOTPImplCopyWith(
          _$RequestOTPImpl value, $Res Function(_$RequestOTPImpl) then) =
      __$$RequestOTPImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String emailOrPhoneNumber});
}

/// @nodoc
class __$$RequestOTPImplCopyWithImpl<$Res>
    extends _$ForgotPasswordBlocEventCopyWithImpl<$Res, _$RequestOTPImpl>
    implements _$$RequestOTPImplCopyWith<$Res> {
  __$$RequestOTPImplCopyWithImpl(
      _$RequestOTPImpl _value, $Res Function(_$RequestOTPImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailOrPhoneNumber = null,
  }) {
    return _then(_$RequestOTPImpl(
      emailOrPhoneNumber: null == emailOrPhoneNumber
          ? _value.emailOrPhoneNumber
          : emailOrPhoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RequestOTPImpl implements _RequestOTP {
  const _$RequestOTPImpl({required this.emailOrPhoneNumber});

  @override
  final String emailOrPhoneNumber;

  @override
  String toString() {
    return 'ForgotPasswordBlocEvent.requestOTP(emailOrPhoneNumber: $emailOrPhoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestOTPImpl &&
            (identical(other.emailOrPhoneNumber, emailOrPhoneNumber) ||
                other.emailOrPhoneNumber == emailOrPhoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emailOrPhoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestOTPImplCopyWith<_$RequestOTPImpl> get copyWith =>
      __$$RequestOTPImplCopyWithImpl<_$RequestOTPImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String emailOrPhoneNumber) requestOTP,
    required TResult Function(String value) emailOrPhoneChange,
    required TResult Function() back,
    required TResult Function(String? verificationCode) verifySendedOTP,
  }) {
    return requestOTP(emailOrPhoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String emailOrPhoneNumber)? requestOTP,
    TResult? Function(String value)? emailOrPhoneChange,
    TResult? Function()? back,
    TResult? Function(String? verificationCode)? verifySendedOTP,
  }) {
    return requestOTP?.call(emailOrPhoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String emailOrPhoneNumber)? requestOTP,
    TResult Function(String value)? emailOrPhoneChange,
    TResult Function()? back,
    TResult Function(String? verificationCode)? verifySendedOTP,
    required TResult orElse(),
  }) {
    if (requestOTP != null) {
      return requestOTP(emailOrPhoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) init,
    required TResult Function(_RequestOTP value) requestOTP,
    required TResult Function(_EmailOrPhoneChange value) emailOrPhoneChange,
    required TResult Function(_Back value) back,
    required TResult Function(_VerifySendedOTP value) verifySendedOTP,
  }) {
    return requestOTP(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? init,
    TResult? Function(_RequestOTP value)? requestOTP,
    TResult? Function(_EmailOrPhoneChange value)? emailOrPhoneChange,
    TResult? Function(_Back value)? back,
    TResult? Function(_VerifySendedOTP value)? verifySendedOTP,
  }) {
    return requestOTP?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? init,
    TResult Function(_RequestOTP value)? requestOTP,
    TResult Function(_EmailOrPhoneChange value)? emailOrPhoneChange,
    TResult Function(_Back value)? back,
    TResult Function(_VerifySendedOTP value)? verifySendedOTP,
    required TResult orElse(),
  }) {
    if (requestOTP != null) {
      return requestOTP(this);
    }
    return orElse();
  }
}

abstract class _RequestOTP implements ForgotPasswordBlocEvent {
  const factory _RequestOTP({required final String emailOrPhoneNumber}) =
      _$RequestOTPImpl;

  String get emailOrPhoneNumber;
  @JsonKey(ignore: true)
  _$$RequestOTPImplCopyWith<_$RequestOTPImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmailOrPhoneChangeImplCopyWith<$Res> {
  factory _$$EmailOrPhoneChangeImplCopyWith(_$EmailOrPhoneChangeImpl value,
          $Res Function(_$EmailOrPhoneChangeImpl) then) =
      __$$EmailOrPhoneChangeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$EmailOrPhoneChangeImplCopyWithImpl<$Res>
    extends _$ForgotPasswordBlocEventCopyWithImpl<$Res,
        _$EmailOrPhoneChangeImpl>
    implements _$$EmailOrPhoneChangeImplCopyWith<$Res> {
  __$$EmailOrPhoneChangeImplCopyWithImpl(_$EmailOrPhoneChangeImpl _value,
      $Res Function(_$EmailOrPhoneChangeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$EmailOrPhoneChangeImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailOrPhoneChangeImpl implements _EmailOrPhoneChange {
  const _$EmailOrPhoneChangeImpl(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'ForgotPasswordBlocEvent.emailOrPhoneChange(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailOrPhoneChangeImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailOrPhoneChangeImplCopyWith<_$EmailOrPhoneChangeImpl> get copyWith =>
      __$$EmailOrPhoneChangeImplCopyWithImpl<_$EmailOrPhoneChangeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String emailOrPhoneNumber) requestOTP,
    required TResult Function(String value) emailOrPhoneChange,
    required TResult Function() back,
    required TResult Function(String? verificationCode) verifySendedOTP,
  }) {
    return emailOrPhoneChange(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String emailOrPhoneNumber)? requestOTP,
    TResult? Function(String value)? emailOrPhoneChange,
    TResult? Function()? back,
    TResult? Function(String? verificationCode)? verifySendedOTP,
  }) {
    return emailOrPhoneChange?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String emailOrPhoneNumber)? requestOTP,
    TResult Function(String value)? emailOrPhoneChange,
    TResult Function()? back,
    TResult Function(String? verificationCode)? verifySendedOTP,
    required TResult orElse(),
  }) {
    if (emailOrPhoneChange != null) {
      return emailOrPhoneChange(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) init,
    required TResult Function(_RequestOTP value) requestOTP,
    required TResult Function(_EmailOrPhoneChange value) emailOrPhoneChange,
    required TResult Function(_Back value) back,
    required TResult Function(_VerifySendedOTP value) verifySendedOTP,
  }) {
    return emailOrPhoneChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? init,
    TResult? Function(_RequestOTP value)? requestOTP,
    TResult? Function(_EmailOrPhoneChange value)? emailOrPhoneChange,
    TResult? Function(_Back value)? back,
    TResult? Function(_VerifySendedOTP value)? verifySendedOTP,
  }) {
    return emailOrPhoneChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? init,
    TResult Function(_RequestOTP value)? requestOTP,
    TResult Function(_EmailOrPhoneChange value)? emailOrPhoneChange,
    TResult Function(_Back value)? back,
    TResult Function(_VerifySendedOTP value)? verifySendedOTP,
    required TResult orElse(),
  }) {
    if (emailOrPhoneChange != null) {
      return emailOrPhoneChange(this);
    }
    return orElse();
  }
}

abstract class _EmailOrPhoneChange implements ForgotPasswordBlocEvent {
  const factory _EmailOrPhoneChange(final String value) =
      _$EmailOrPhoneChangeImpl;

  String get value;
  @JsonKey(ignore: true)
  _$$EmailOrPhoneChangeImplCopyWith<_$EmailOrPhoneChangeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BackImplCopyWith<$Res> {
  factory _$$BackImplCopyWith(
          _$BackImpl value, $Res Function(_$BackImpl) then) =
      __$$BackImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BackImplCopyWithImpl<$Res>
    extends _$ForgotPasswordBlocEventCopyWithImpl<$Res, _$BackImpl>
    implements _$$BackImplCopyWith<$Res> {
  __$$BackImplCopyWithImpl(_$BackImpl _value, $Res Function(_$BackImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BackImpl implements _Back {
  const _$BackImpl();

  @override
  String toString() {
    return 'ForgotPasswordBlocEvent.back()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BackImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String emailOrPhoneNumber) requestOTP,
    required TResult Function(String value) emailOrPhoneChange,
    required TResult Function() back,
    required TResult Function(String? verificationCode) verifySendedOTP,
  }) {
    return back();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String emailOrPhoneNumber)? requestOTP,
    TResult? Function(String value)? emailOrPhoneChange,
    TResult? Function()? back,
    TResult? Function(String? verificationCode)? verifySendedOTP,
  }) {
    return back?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String emailOrPhoneNumber)? requestOTP,
    TResult Function(String value)? emailOrPhoneChange,
    TResult Function()? back,
    TResult Function(String? verificationCode)? verifySendedOTP,
    required TResult orElse(),
  }) {
    if (back != null) {
      return back();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) init,
    required TResult Function(_RequestOTP value) requestOTP,
    required TResult Function(_EmailOrPhoneChange value) emailOrPhoneChange,
    required TResult Function(_Back value) back,
    required TResult Function(_VerifySendedOTP value) verifySendedOTP,
  }) {
    return back(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? init,
    TResult? Function(_RequestOTP value)? requestOTP,
    TResult? Function(_EmailOrPhoneChange value)? emailOrPhoneChange,
    TResult? Function(_Back value)? back,
    TResult? Function(_VerifySendedOTP value)? verifySendedOTP,
  }) {
    return back?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? init,
    TResult Function(_RequestOTP value)? requestOTP,
    TResult Function(_EmailOrPhoneChange value)? emailOrPhoneChange,
    TResult Function(_Back value)? back,
    TResult Function(_VerifySendedOTP value)? verifySendedOTP,
    required TResult orElse(),
  }) {
    if (back != null) {
      return back(this);
    }
    return orElse();
  }
}

abstract class _Back implements ForgotPasswordBlocEvent {
  const factory _Back() = _$BackImpl;
}

/// @nodoc
abstract class _$$VerifySendedOTPImplCopyWith<$Res> {
  factory _$$VerifySendedOTPImplCopyWith(_$VerifySendedOTPImpl value,
          $Res Function(_$VerifySendedOTPImpl) then) =
      __$$VerifySendedOTPImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? verificationCode});
}

/// @nodoc
class __$$VerifySendedOTPImplCopyWithImpl<$Res>
    extends _$ForgotPasswordBlocEventCopyWithImpl<$Res, _$VerifySendedOTPImpl>
    implements _$$VerifySendedOTPImplCopyWith<$Res> {
  __$$VerifySendedOTPImplCopyWithImpl(
      _$VerifySendedOTPImpl _value, $Res Function(_$VerifySendedOTPImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? verificationCode = freezed,
  }) {
    return _then(_$VerifySendedOTPImpl(
      freezed == verificationCode
          ? _value.verificationCode
          : verificationCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$VerifySendedOTPImpl implements _VerifySendedOTP {
  const _$VerifySendedOTPImpl(this.verificationCode);

  @override
  final String? verificationCode;

  @override
  String toString() {
    return 'ForgotPasswordBlocEvent.verifySendedOTP(verificationCode: $verificationCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifySendedOTPImpl &&
            (identical(other.verificationCode, verificationCode) ||
                other.verificationCode == verificationCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, verificationCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifySendedOTPImplCopyWith<_$VerifySendedOTPImpl> get copyWith =>
      __$$VerifySendedOTPImplCopyWithImpl<_$VerifySendedOTPImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String emailOrPhoneNumber) requestOTP,
    required TResult Function(String value) emailOrPhoneChange,
    required TResult Function() back,
    required TResult Function(String? verificationCode) verifySendedOTP,
  }) {
    return verifySendedOTP(verificationCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String emailOrPhoneNumber)? requestOTP,
    TResult? Function(String value)? emailOrPhoneChange,
    TResult? Function()? back,
    TResult? Function(String? verificationCode)? verifySendedOTP,
  }) {
    return verifySendedOTP?.call(verificationCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String emailOrPhoneNumber)? requestOTP,
    TResult Function(String value)? emailOrPhoneChange,
    TResult Function()? back,
    TResult Function(String? verificationCode)? verifySendedOTP,
    required TResult orElse(),
  }) {
    if (verifySendedOTP != null) {
      return verifySendedOTP(verificationCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) init,
    required TResult Function(_RequestOTP value) requestOTP,
    required TResult Function(_EmailOrPhoneChange value) emailOrPhoneChange,
    required TResult Function(_Back value) back,
    required TResult Function(_VerifySendedOTP value) verifySendedOTP,
  }) {
    return verifySendedOTP(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? init,
    TResult? Function(_RequestOTP value)? requestOTP,
    TResult? Function(_EmailOrPhoneChange value)? emailOrPhoneChange,
    TResult? Function(_Back value)? back,
    TResult? Function(_VerifySendedOTP value)? verifySendedOTP,
  }) {
    return verifySendedOTP?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? init,
    TResult Function(_RequestOTP value)? requestOTP,
    TResult Function(_EmailOrPhoneChange value)? emailOrPhoneChange,
    TResult Function(_Back value)? back,
    TResult Function(_VerifySendedOTP value)? verifySendedOTP,
    required TResult orElse(),
  }) {
    if (verifySendedOTP != null) {
      return verifySendedOTP(this);
    }
    return orElse();
  }
}

abstract class _VerifySendedOTP implements ForgotPasswordBlocEvent {
  const factory _VerifySendedOTP(final String? verificationCode) =
      _$VerifySendedOTPImpl;

  String? get verificationCode;
  @JsonKey(ignore: true)
  _$$VerifySendedOTPImplCopyWith<_$VerifySendedOTPImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ForgotPasswordBlocState {
  ForgotPasswordPageState get forgotPasswordPageState =>
      throw _privateConstructorUsedError;
  String get emailOrPhoneInput => throw _privateConstructorUsedError;
  UIStatus get verifySendedOTPStatus => throw _privateConstructorUsedError;
  UIStatus get requestOtpUiStatus => throw _privateConstructorUsedError;
  UIStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ForgotPasswordBlocStateCopyWith<ForgotPasswordBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordBlocStateCopyWith<$Res> {
  factory $ForgotPasswordBlocStateCopyWith(ForgotPasswordBlocState value,
          $Res Function(ForgotPasswordBlocState) then) =
      _$ForgotPasswordBlocStateCopyWithImpl<$Res, ForgotPasswordBlocState>;
  @useResult
  $Res call(
      {ForgotPasswordPageState forgotPasswordPageState,
      String emailOrPhoneInput,
      UIStatus verifySendedOTPStatus,
      UIStatus requestOtpUiStatus,
      UIStatus status});

  $UIStatusCopyWith<$Res> get verifySendedOTPStatus;
  $UIStatusCopyWith<$Res> get requestOtpUiStatus;
  $UIStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$ForgotPasswordBlocStateCopyWithImpl<$Res,
        $Val extends ForgotPasswordBlocState>
    implements $ForgotPasswordBlocStateCopyWith<$Res> {
  _$ForgotPasswordBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? forgotPasswordPageState = null,
    Object? emailOrPhoneInput = null,
    Object? verifySendedOTPStatus = null,
    Object? requestOtpUiStatus = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      forgotPasswordPageState: null == forgotPasswordPageState
          ? _value.forgotPasswordPageState
          : forgotPasswordPageState // ignore: cast_nullable_to_non_nullable
              as ForgotPasswordPageState,
      emailOrPhoneInput: null == emailOrPhoneInput
          ? _value.emailOrPhoneInput
          : emailOrPhoneInput // ignore: cast_nullable_to_non_nullable
              as String,
      verifySendedOTPStatus: null == verifySendedOTPStatus
          ? _value.verifySendedOTPStatus
          : verifySendedOTPStatus // ignore: cast_nullable_to_non_nullable
              as UIStatus,
      requestOtpUiStatus: null == requestOtpUiStatus
          ? _value.requestOtpUiStatus
          : requestOtpUiStatus // ignore: cast_nullable_to_non_nullable
              as UIStatus,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UIStatus,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UIStatusCopyWith<$Res> get verifySendedOTPStatus {
    return $UIStatusCopyWith<$Res>(_value.verifySendedOTPStatus, (value) {
      return _then(_value.copyWith(verifySendedOTPStatus: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UIStatusCopyWith<$Res> get requestOtpUiStatus {
    return $UIStatusCopyWith<$Res>(_value.requestOtpUiStatus, (value) {
      return _then(_value.copyWith(requestOtpUiStatus: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UIStatusCopyWith<$Res> get status {
    return $UIStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ForgotPasswordBlocStateImplCopyWith<$Res>
    implements $ForgotPasswordBlocStateCopyWith<$Res> {
  factory _$$ForgotPasswordBlocStateImplCopyWith(
          _$ForgotPasswordBlocStateImpl value,
          $Res Function(_$ForgotPasswordBlocStateImpl) then) =
      __$$ForgotPasswordBlocStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ForgotPasswordPageState forgotPasswordPageState,
      String emailOrPhoneInput,
      UIStatus verifySendedOTPStatus,
      UIStatus requestOtpUiStatus,
      UIStatus status});

  @override
  $UIStatusCopyWith<$Res> get verifySendedOTPStatus;
  @override
  $UIStatusCopyWith<$Res> get requestOtpUiStatus;
  @override
  $UIStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$ForgotPasswordBlocStateImplCopyWithImpl<$Res>
    extends _$ForgotPasswordBlocStateCopyWithImpl<$Res,
        _$ForgotPasswordBlocStateImpl>
    implements _$$ForgotPasswordBlocStateImplCopyWith<$Res> {
  __$$ForgotPasswordBlocStateImplCopyWithImpl(
      _$ForgotPasswordBlocStateImpl _value,
      $Res Function(_$ForgotPasswordBlocStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? forgotPasswordPageState = null,
    Object? emailOrPhoneInput = null,
    Object? verifySendedOTPStatus = null,
    Object? requestOtpUiStatus = null,
    Object? status = null,
  }) {
    return _then(_$ForgotPasswordBlocStateImpl(
      forgotPasswordPageState: null == forgotPasswordPageState
          ? _value.forgotPasswordPageState
          : forgotPasswordPageState // ignore: cast_nullable_to_non_nullable
              as ForgotPasswordPageState,
      emailOrPhoneInput: null == emailOrPhoneInput
          ? _value.emailOrPhoneInput
          : emailOrPhoneInput // ignore: cast_nullable_to_non_nullable
              as String,
      verifySendedOTPStatus: null == verifySendedOTPStatus
          ? _value.verifySendedOTPStatus
          : verifySendedOTPStatus // ignore: cast_nullable_to_non_nullable
              as UIStatus,
      requestOtpUiStatus: null == requestOtpUiStatus
          ? _value.requestOtpUiStatus
          : requestOtpUiStatus // ignore: cast_nullable_to_non_nullable
              as UIStatus,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UIStatus,
    ));
  }
}

/// @nodoc

class _$ForgotPasswordBlocStateImpl implements _ForgotPasswordBlocState {
  const _$ForgotPasswordBlocStateImpl(
      {this.forgotPasswordPageState = ForgotPasswordPageState.reqOTP,
      this.emailOrPhoneInput = '',
      this.verifySendedOTPStatus = const UIInitial(),
      this.requestOtpUiStatus = const UIInitial(),
      this.status = const UIInitial()});

  @override
  @JsonKey()
  final ForgotPasswordPageState forgotPasswordPageState;
  @override
  @JsonKey()
  final String emailOrPhoneInput;
  @override
  @JsonKey()
  final UIStatus verifySendedOTPStatus;
  @override
  @JsonKey()
  final UIStatus requestOtpUiStatus;
  @override
  @JsonKey()
  final UIStatus status;

  @override
  String toString() {
    return 'ForgotPasswordBlocState(forgotPasswordPageState: $forgotPasswordPageState, emailOrPhoneInput: $emailOrPhoneInput, verifySendedOTPStatus: $verifySendedOTPStatus, requestOtpUiStatus: $requestOtpUiStatus, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordBlocStateImpl &&
            (identical(
                    other.forgotPasswordPageState, forgotPasswordPageState) ||
                other.forgotPasswordPageState == forgotPasswordPageState) &&
            (identical(other.emailOrPhoneInput, emailOrPhoneInput) ||
                other.emailOrPhoneInput == emailOrPhoneInput) &&
            (identical(other.verifySendedOTPStatus, verifySendedOTPStatus) ||
                other.verifySendedOTPStatus == verifySendedOTPStatus) &&
            (identical(other.requestOtpUiStatus, requestOtpUiStatus) ||
                other.requestOtpUiStatus == requestOtpUiStatus) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, forgotPasswordPageState,
      emailOrPhoneInput, verifySendedOTPStatus, requestOtpUiStatus, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgotPasswordBlocStateImplCopyWith<_$ForgotPasswordBlocStateImpl>
      get copyWith => __$$ForgotPasswordBlocStateImplCopyWithImpl<
          _$ForgotPasswordBlocStateImpl>(this, _$identity);
}

abstract class _ForgotPasswordBlocState implements ForgotPasswordBlocState {
  const factory _ForgotPasswordBlocState(
      {final ForgotPasswordPageState forgotPasswordPageState,
      final String emailOrPhoneInput,
      final UIStatus verifySendedOTPStatus,
      final UIStatus requestOtpUiStatus,
      final UIStatus status}) = _$ForgotPasswordBlocStateImpl;

  @override
  ForgotPasswordPageState get forgotPasswordPageState;
  @override
  String get emailOrPhoneInput;
  @override
  UIStatus get verifySendedOTPStatus;
  @override
  UIStatus get requestOtpUiStatus;
  @override
  UIStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$ForgotPasswordBlocStateImplCopyWith<_$ForgotPasswordBlocStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
