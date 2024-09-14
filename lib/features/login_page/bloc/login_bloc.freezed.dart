// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() login,
    required TResult Function(GlobalKey<FormState> formKey) validateForm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? login,
    TResult? Function(GlobalKey<FormState> formKey)? validateForm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? login,
    TResult Function(GlobalKey<FormState> formKey)? validateForm,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_Login value) login,
    required TResult Function(_ValidateForm value) validateForm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_Login value)? login,
    TResult? Function(_ValidateForm value)? validateForm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_Login value)? login,
    TResult Function(_ValidateForm value)? validateForm,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginBlocEventCopyWith<$Res> {
  factory $LoginBlocEventCopyWith(
          LoginBlocEvent value, $Res Function(LoginBlocEvent) then) =
      _$LoginBlocEventCopyWithImpl<$Res, LoginBlocEvent>;
}

/// @nodoc
class _$LoginBlocEventCopyWithImpl<$Res, $Val extends LoginBlocEvent>
    implements $LoginBlocEventCopyWith<$Res> {
  _$LoginBlocEventCopyWithImpl(this._value, this._then);

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
    extends _$LoginBlocEventCopyWithImpl<$Res, _$InitializeImpl>
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
    return 'LoginBlocEvent.initialize()';
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
    required TResult Function() login,
    required TResult Function(GlobalKey<FormState> formKey) validateForm,
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? login,
    TResult? Function(GlobalKey<FormState> formKey)? validateForm,
  }) {
    return initialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? login,
    TResult Function(GlobalKey<FormState> formKey)? validateForm,
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
    required TResult Function(_Login value) login,
    required TResult Function(_ValidateForm value) validateForm,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_Login value)? login,
    TResult? Function(_ValidateForm value)? validateForm,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_Login value)? login,
    TResult Function(_ValidateForm value)? validateForm,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class _Initialize implements LoginBlocEvent {
  const factory _Initialize() = _$InitializeImpl;
}

/// @nodoc
abstract class _$$LoginImplCopyWith<$Res> {
  factory _$$LoginImplCopyWith(
          _$LoginImpl value, $Res Function(_$LoginImpl) then) =
      __$$LoginImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginImplCopyWithImpl<$Res>
    extends _$LoginBlocEventCopyWithImpl<$Res, _$LoginImpl>
    implements _$$LoginImplCopyWith<$Res> {
  __$$LoginImplCopyWithImpl(
      _$LoginImpl _value, $Res Function(_$LoginImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginImpl implements _Login {
  const _$LoginImpl();

  @override
  String toString() {
    return 'LoginBlocEvent.login()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() login,
    required TResult Function(GlobalKey<FormState> formKey) validateForm,
  }) {
    return login();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? login,
    TResult? Function(GlobalKey<FormState> formKey)? validateForm,
  }) {
    return login?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? login,
    TResult Function(GlobalKey<FormState> formKey)? validateForm,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_Login value) login,
    required TResult Function(_ValidateForm value) validateForm,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_Login value)? login,
    TResult? Function(_ValidateForm value)? validateForm,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_Login value)? login,
    TResult Function(_ValidateForm value)? validateForm,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _Login implements LoginBlocEvent {
  const factory _Login() = _$LoginImpl;
}

/// @nodoc
abstract class _$$ValidateFormImplCopyWith<$Res> {
  factory _$$ValidateFormImplCopyWith(
          _$ValidateFormImpl value, $Res Function(_$ValidateFormImpl) then) =
      __$$ValidateFormImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GlobalKey<FormState> formKey});
}

/// @nodoc
class __$$ValidateFormImplCopyWithImpl<$Res>
    extends _$LoginBlocEventCopyWithImpl<$Res, _$ValidateFormImpl>
    implements _$$ValidateFormImplCopyWith<$Res> {
  __$$ValidateFormImplCopyWithImpl(
      _$ValidateFormImpl _value, $Res Function(_$ValidateFormImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formKey = null,
  }) {
    return _then(_$ValidateFormImpl(
      formKey: null == formKey
          ? _value.formKey
          : formKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<FormState>,
    ));
  }
}

/// @nodoc

class _$ValidateFormImpl implements _ValidateForm {
  const _$ValidateFormImpl({required this.formKey});

  @override
  final GlobalKey<FormState> formKey;

  @override
  String toString() {
    return 'LoginBlocEvent.validateForm(formKey: $formKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidateFormImpl &&
            (identical(other.formKey, formKey) || other.formKey == formKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, formKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidateFormImplCopyWith<_$ValidateFormImpl> get copyWith =>
      __$$ValidateFormImplCopyWithImpl<_$ValidateFormImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() login,
    required TResult Function(GlobalKey<FormState> formKey) validateForm,
  }) {
    return validateForm(formKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? login,
    TResult? Function(GlobalKey<FormState> formKey)? validateForm,
  }) {
    return validateForm?.call(formKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? login,
    TResult Function(GlobalKey<FormState> formKey)? validateForm,
    required TResult orElse(),
  }) {
    if (validateForm != null) {
      return validateForm(formKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_Login value) login,
    required TResult Function(_ValidateForm value) validateForm,
  }) {
    return validateForm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_Login value)? login,
    TResult? Function(_ValidateForm value)? validateForm,
  }) {
    return validateForm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_Login value)? login,
    TResult Function(_ValidateForm value)? validateForm,
    required TResult orElse(),
  }) {
    if (validateForm != null) {
      return validateForm(this);
    }
    return orElse();
  }
}

abstract class _ValidateForm implements LoginBlocEvent {
  const factory _ValidateForm({required final GlobalKey<FormState> formKey}) =
      _$ValidateFormImpl;

  GlobalKey<FormState> get formKey;
  @JsonKey(ignore: true)
  _$$ValidateFormImplCopyWith<_$ValidateFormImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoginBlocState {
  UIStatus get status => throw _privateConstructorUsedError;
  UIStatus get checkEmailStatus => throw _privateConstructorUsedError;
  UIStatus get checkPasswordStatus => throw _privateConstructorUsedError;
  UIStatus get passwordOptionStatus => throw _privateConstructorUsedError;
  PasswordOptionEnum get passwordOptionEnum =>
      throw _privateConstructorUsedError;
  String? get emailValidatorMessage => throw _privateConstructorUsedError;
  bool get validateForm => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginBlocStateCopyWith<LoginBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginBlocStateCopyWith<$Res> {
  factory $LoginBlocStateCopyWith(
          LoginBlocState value, $Res Function(LoginBlocState) then) =
      _$LoginBlocStateCopyWithImpl<$Res, LoginBlocState>;
  @useResult
  $Res call(
      {UIStatus status,
      UIStatus checkEmailStatus,
      UIStatus checkPasswordStatus,
      UIStatus passwordOptionStatus,
      PasswordOptionEnum passwordOptionEnum,
      String? emailValidatorMessage,
      bool validateForm});

  $UIStatusCopyWith<$Res> get status;
  $UIStatusCopyWith<$Res> get checkEmailStatus;
  $UIStatusCopyWith<$Res> get checkPasswordStatus;
  $UIStatusCopyWith<$Res> get passwordOptionStatus;
}

/// @nodoc
class _$LoginBlocStateCopyWithImpl<$Res, $Val extends LoginBlocState>
    implements $LoginBlocStateCopyWith<$Res> {
  _$LoginBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? checkEmailStatus = null,
    Object? checkPasswordStatus = null,
    Object? passwordOptionStatus = null,
    Object? passwordOptionEnum = null,
    Object? emailValidatorMessage = freezed,
    Object? validateForm = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UIStatus,
      checkEmailStatus: null == checkEmailStatus
          ? _value.checkEmailStatus
          : checkEmailStatus // ignore: cast_nullable_to_non_nullable
              as UIStatus,
      checkPasswordStatus: null == checkPasswordStatus
          ? _value.checkPasswordStatus
          : checkPasswordStatus // ignore: cast_nullable_to_non_nullable
              as UIStatus,
      passwordOptionStatus: null == passwordOptionStatus
          ? _value.passwordOptionStatus
          : passwordOptionStatus // ignore: cast_nullable_to_non_nullable
              as UIStatus,
      passwordOptionEnum: null == passwordOptionEnum
          ? _value.passwordOptionEnum
          : passwordOptionEnum // ignore: cast_nullable_to_non_nullable
              as PasswordOptionEnum,
      emailValidatorMessage: freezed == emailValidatorMessage
          ? _value.emailValidatorMessage
          : emailValidatorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      validateForm: null == validateForm
          ? _value.validateForm
          : validateForm // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UIStatusCopyWith<$Res> get status {
    return $UIStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UIStatusCopyWith<$Res> get checkEmailStatus {
    return $UIStatusCopyWith<$Res>(_value.checkEmailStatus, (value) {
      return _then(_value.copyWith(checkEmailStatus: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UIStatusCopyWith<$Res> get checkPasswordStatus {
    return $UIStatusCopyWith<$Res>(_value.checkPasswordStatus, (value) {
      return _then(_value.copyWith(checkPasswordStatus: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UIStatusCopyWith<$Res> get passwordOptionStatus {
    return $UIStatusCopyWith<$Res>(_value.passwordOptionStatus, (value) {
      return _then(_value.copyWith(passwordOptionStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoginBlocStateImplCopyWith<$Res>
    implements $LoginBlocStateCopyWith<$Res> {
  factory _$$LoginBlocStateImplCopyWith(_$LoginBlocStateImpl value,
          $Res Function(_$LoginBlocStateImpl) then) =
      __$$LoginBlocStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UIStatus status,
      UIStatus checkEmailStatus,
      UIStatus checkPasswordStatus,
      UIStatus passwordOptionStatus,
      PasswordOptionEnum passwordOptionEnum,
      String? emailValidatorMessage,
      bool validateForm});

  @override
  $UIStatusCopyWith<$Res> get status;
  @override
  $UIStatusCopyWith<$Res> get checkEmailStatus;
  @override
  $UIStatusCopyWith<$Res> get checkPasswordStatus;
  @override
  $UIStatusCopyWith<$Res> get passwordOptionStatus;
}

/// @nodoc
class __$$LoginBlocStateImplCopyWithImpl<$Res>
    extends _$LoginBlocStateCopyWithImpl<$Res, _$LoginBlocStateImpl>
    implements _$$LoginBlocStateImplCopyWith<$Res> {
  __$$LoginBlocStateImplCopyWithImpl(
      _$LoginBlocStateImpl _value, $Res Function(_$LoginBlocStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? checkEmailStatus = null,
    Object? checkPasswordStatus = null,
    Object? passwordOptionStatus = null,
    Object? passwordOptionEnum = null,
    Object? emailValidatorMessage = freezed,
    Object? validateForm = null,
  }) {
    return _then(_$LoginBlocStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UIStatus,
      checkEmailStatus: null == checkEmailStatus
          ? _value.checkEmailStatus
          : checkEmailStatus // ignore: cast_nullable_to_non_nullable
              as UIStatus,
      checkPasswordStatus: null == checkPasswordStatus
          ? _value.checkPasswordStatus
          : checkPasswordStatus // ignore: cast_nullable_to_non_nullable
              as UIStatus,
      passwordOptionStatus: null == passwordOptionStatus
          ? _value.passwordOptionStatus
          : passwordOptionStatus // ignore: cast_nullable_to_non_nullable
              as UIStatus,
      passwordOptionEnum: null == passwordOptionEnum
          ? _value.passwordOptionEnum
          : passwordOptionEnum // ignore: cast_nullable_to_non_nullable
              as PasswordOptionEnum,
      emailValidatorMessage: freezed == emailValidatorMessage
          ? _value.emailValidatorMessage
          : emailValidatorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      validateForm: null == validateForm
          ? _value.validateForm
          : validateForm // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoginBlocStateImpl implements _LoginBlocState {
  const _$LoginBlocStateImpl(
      {this.status = const UIInitial(),
      this.checkEmailStatus = const UIInitial(),
      this.checkPasswordStatus = const UIInitial(),
      this.passwordOptionStatus = const UIInitial(),
      this.passwordOptionEnum = PasswordOptionEnum.rememberAndForgot,
      this.emailValidatorMessage,
      this.validateForm = false});

  @override
  @JsonKey()
  final UIStatus status;
  @override
  @JsonKey()
  final UIStatus checkEmailStatus;
  @override
  @JsonKey()
  final UIStatus checkPasswordStatus;
  @override
  @JsonKey()
  final UIStatus passwordOptionStatus;
  @override
  @JsonKey()
  final PasswordOptionEnum passwordOptionEnum;
  @override
  final String? emailValidatorMessage;
  @override
  @JsonKey()
  final bool validateForm;

  @override
  String toString() {
    return 'LoginBlocState(status: $status, checkEmailStatus: $checkEmailStatus, checkPasswordStatus: $checkPasswordStatus, passwordOptionStatus: $passwordOptionStatus, passwordOptionEnum: $passwordOptionEnum, emailValidatorMessage: $emailValidatorMessage, validateForm: $validateForm)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginBlocStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.checkEmailStatus, checkEmailStatus) ||
                other.checkEmailStatus == checkEmailStatus) &&
            (identical(other.checkPasswordStatus, checkPasswordStatus) ||
                other.checkPasswordStatus == checkPasswordStatus) &&
            (identical(other.passwordOptionStatus, passwordOptionStatus) ||
                other.passwordOptionStatus == passwordOptionStatus) &&
            (identical(other.passwordOptionEnum, passwordOptionEnum) ||
                other.passwordOptionEnum == passwordOptionEnum) &&
            (identical(other.emailValidatorMessage, emailValidatorMessage) ||
                other.emailValidatorMessage == emailValidatorMessage) &&
            (identical(other.validateForm, validateForm) ||
                other.validateForm == validateForm));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      checkEmailStatus,
      checkPasswordStatus,
      passwordOptionStatus,
      passwordOptionEnum,
      emailValidatorMessage,
      validateForm);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginBlocStateImplCopyWith<_$LoginBlocStateImpl> get copyWith =>
      __$$LoginBlocStateImplCopyWithImpl<_$LoginBlocStateImpl>(
          this, _$identity);
}

abstract class _LoginBlocState implements LoginBlocState {
  const factory _LoginBlocState(
      {final UIStatus status,
      final UIStatus checkEmailStatus,
      final UIStatus checkPasswordStatus,
      final UIStatus passwordOptionStatus,
      final PasswordOptionEnum passwordOptionEnum,
      final String? emailValidatorMessage,
      final bool validateForm}) = _$LoginBlocStateImpl;

  @override
  UIStatus get status;
  @override
  UIStatus get checkEmailStatus;
  @override
  UIStatus get checkPasswordStatus;
  @override
  UIStatus get passwordOptionStatus;
  @override
  PasswordOptionEnum get passwordOptionEnum;
  @override
  String? get emailValidatorMessage;
  @override
  bool get validateForm;
  @override
  @JsonKey(ignore: true)
  _$$LoginBlocStateImplCopyWith<_$LoginBlocStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
