// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'set_new_password_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SetNewPasswordBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(String mobile, String newPassword) resetPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(String mobile, String newPassword)? resetPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String mobile, String newPassword)? resetPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_ResetPassword value) resetPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_ResetPassword value)? resetPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_ResetPassword value)? resetPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetNewPasswordBlocEventCopyWith<$Res> {
  factory $SetNewPasswordBlocEventCopyWith(SetNewPasswordBlocEvent value,
          $Res Function(SetNewPasswordBlocEvent) then) =
      _$SetNewPasswordBlocEventCopyWithImpl<$Res, SetNewPasswordBlocEvent>;
}

/// @nodoc
class _$SetNewPasswordBlocEventCopyWithImpl<$Res,
        $Val extends SetNewPasswordBlocEvent>
    implements $SetNewPasswordBlocEventCopyWith<$Res> {
  _$SetNewPasswordBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitializeImplCopyWith<$Res> {
  factory _$$InitializeImplCopyWith(
          _$InitializeImpl value, $Res Function(_$InitializeImpl) then) =
      __$$InitializeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializeImplCopyWithImpl<$Res>
    extends _$SetNewPasswordBlocEventCopyWithImpl<$Res, _$InitializeImpl>
    implements _$$InitializeImplCopyWith<$Res> {
  __$$InitializeImplCopyWithImpl(
      _$InitializeImpl _value, $Res Function(_$InitializeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitializeImpl implements _Initialize {
  const _$InitializeImpl();

  @override
  String toString() {
    return 'SetNewPasswordBlocEvent.initialize()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitializeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(String mobile, String newPassword) resetPassword,
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(String mobile, String newPassword)? resetPassword,
  }) {
    return initialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String mobile, String newPassword)? resetPassword,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_ResetPassword value) resetPassword,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_ResetPassword value)? resetPassword,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_ResetPassword value)? resetPassword,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class _Initialize implements SetNewPasswordBlocEvent {
  const factory _Initialize() = _$InitializeImpl;
}

/// @nodoc
abstract class _$$ResetPasswordImplCopyWith<$Res> {
  factory _$$ResetPasswordImplCopyWith(
          _$ResetPasswordImpl value, $Res Function(_$ResetPasswordImpl) then) =
      __$$ResetPasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String mobile, String newPassword});
}

/// @nodoc
class __$$ResetPasswordImplCopyWithImpl<$Res>
    extends _$SetNewPasswordBlocEventCopyWithImpl<$Res, _$ResetPasswordImpl>
    implements _$$ResetPasswordImplCopyWith<$Res> {
  __$$ResetPasswordImplCopyWithImpl(
      _$ResetPasswordImpl _value, $Res Function(_$ResetPasswordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mobile = null,
    Object? newPassword = null,
  }) {
    return _then(_$ResetPasswordImpl(
      mobile: null == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ResetPasswordImpl implements _ResetPassword {
  const _$ResetPasswordImpl({required this.mobile, required this.newPassword});

  @override
  final String mobile;
  @override
  final String newPassword;

  @override
  String toString() {
    return 'SetNewPasswordBlocEvent.resetPassword(mobile: $mobile, newPassword: $newPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetPasswordImpl &&
            (identical(other.mobile, mobile) || other.mobile == mobile) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mobile, newPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResetPasswordImplCopyWith<_$ResetPasswordImpl> get copyWith =>
      __$$ResetPasswordImplCopyWithImpl<_$ResetPasswordImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(String mobile, String newPassword) resetPassword,
  }) {
    return resetPassword(mobile, newPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(String mobile, String newPassword)? resetPassword,
  }) {
    return resetPassword?.call(mobile, newPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String mobile, String newPassword)? resetPassword,
    required TResult orElse(),
  }) {
    if (resetPassword != null) {
      return resetPassword(mobile, newPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_ResetPassword value) resetPassword,
  }) {
    return resetPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_ResetPassword value)? resetPassword,
  }) {
    return resetPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_ResetPassword value)? resetPassword,
    required TResult orElse(),
  }) {
    if (resetPassword != null) {
      return resetPassword(this);
    }
    return orElse();
  }
}

abstract class _ResetPassword implements SetNewPasswordBlocEvent {
  const factory _ResetPassword(
      {required final String mobile,
      required final String newPassword}) = _$ResetPasswordImpl;

  String get mobile;
  String get newPassword;
  @JsonKey(ignore: true)
  _$$ResetPasswordImplCopyWith<_$ResetPasswordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SetNewPasswordBlocState {
  UIStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SetNewPasswordBlocStateCopyWith<SetNewPasswordBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetNewPasswordBlocStateCopyWith<$Res> {
  factory $SetNewPasswordBlocStateCopyWith(SetNewPasswordBlocState value,
          $Res Function(SetNewPasswordBlocState) then) =
      _$SetNewPasswordBlocStateCopyWithImpl<$Res, SetNewPasswordBlocState>;
  @useResult
  $Res call({UIStatus status});

  $UIStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$SetNewPasswordBlocStateCopyWithImpl<$Res,
        $Val extends SetNewPasswordBlocState>
    implements $SetNewPasswordBlocStateCopyWith<$Res> {
  _$SetNewPasswordBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UIStatus,
    ) as $Val);
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
abstract class _$$SetNewPasswordBlocStateImplCopyWith<$Res>
    implements $SetNewPasswordBlocStateCopyWith<$Res> {
  factory _$$SetNewPasswordBlocStateImplCopyWith(
          _$SetNewPasswordBlocStateImpl value,
          $Res Function(_$SetNewPasswordBlocStateImpl) then) =
      __$$SetNewPasswordBlocStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UIStatus status});

  @override
  $UIStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$SetNewPasswordBlocStateImplCopyWithImpl<$Res>
    extends _$SetNewPasswordBlocStateCopyWithImpl<$Res,
        _$SetNewPasswordBlocStateImpl>
    implements _$$SetNewPasswordBlocStateImplCopyWith<$Res> {
  __$$SetNewPasswordBlocStateImplCopyWithImpl(
      _$SetNewPasswordBlocStateImpl _value,
      $Res Function(_$SetNewPasswordBlocStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$SetNewPasswordBlocStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UIStatus,
    ));
  }
}

/// @nodoc

class _$SetNewPasswordBlocStateImpl implements _SetNewPasswordBlocState {
  const _$SetNewPasswordBlocStateImpl({this.status = const UIInitial()});

  @override
  @JsonKey()
  final UIStatus status;

  @override
  String toString() {
    return 'SetNewPasswordBlocState(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetNewPasswordBlocStateImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetNewPasswordBlocStateImplCopyWith<_$SetNewPasswordBlocStateImpl>
      get copyWith => __$$SetNewPasswordBlocStateImplCopyWithImpl<
          _$SetNewPasswordBlocStateImpl>(this, _$identity);
}

abstract class _SetNewPasswordBlocState implements SetNewPasswordBlocState {
  const factory _SetNewPasswordBlocState({final UIStatus status}) =
      _$SetNewPasswordBlocStateImpl;

  @override
  UIStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$SetNewPasswordBlocStateImplCopyWith<_$SetNewPasswordBlocStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
