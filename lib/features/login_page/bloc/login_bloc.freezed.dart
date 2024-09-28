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
    required TResult Function() initialEmailTextFormField,
    required TResult Function() initialPasswordTextFormField,
    required TResult Function(TextEditingController? emailTextFieldController,
            TextEditingController? passwordTextFieldController)
        login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? initialEmailTextFormField,
    TResult? Function()? initialPasswordTextFormField,
    TResult? Function(TextEditingController? emailTextFieldController,
            TextEditingController? passwordTextFieldController)?
        login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? initialEmailTextFormField,
    TResult Function()? initialPasswordTextFormField,
    TResult Function(TextEditingController? emailTextFieldController,
            TextEditingController? passwordTextFieldController)?
        login,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_InitialEmailTextFormField value)
        initialEmailTextFormField,
    required TResult Function(_InitialPasswordTextFormField value)
        initialPasswordTextFormField,
    required TResult Function(_Login value) login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_InitialEmailTextFormField value)?
        initialEmailTextFormField,
    TResult? Function(_InitialPasswordTextFormField value)?
        initialPasswordTextFormField,
    TResult? Function(_Login value)? login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_InitialEmailTextFormField value)?
        initialEmailTextFormField,
    TResult Function(_InitialPasswordTextFormField value)?
        initialPasswordTextFormField,
    TResult Function(_Login value)? login,
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
    required TResult Function() initialEmailTextFormField,
    required TResult Function() initialPasswordTextFormField,
    required TResult Function(TextEditingController? emailTextFieldController,
            TextEditingController? passwordTextFieldController)
        login,
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? initialEmailTextFormField,
    TResult? Function()? initialPasswordTextFormField,
    TResult? Function(TextEditingController? emailTextFieldController,
            TextEditingController? passwordTextFieldController)?
        login,
  }) {
    return initialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? initialEmailTextFormField,
    TResult Function()? initialPasswordTextFormField,
    TResult Function(TextEditingController? emailTextFieldController,
            TextEditingController? passwordTextFieldController)?
        login,
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
    required TResult Function(_InitialEmailTextFormField value)
        initialEmailTextFormField,
    required TResult Function(_InitialPasswordTextFormField value)
        initialPasswordTextFormField,
    required TResult Function(_Login value) login,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_InitialEmailTextFormField value)?
        initialEmailTextFormField,
    TResult? Function(_InitialPasswordTextFormField value)?
        initialPasswordTextFormField,
    TResult? Function(_Login value)? login,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_InitialEmailTextFormField value)?
        initialEmailTextFormField,
    TResult Function(_InitialPasswordTextFormField value)?
        initialPasswordTextFormField,
    TResult Function(_Login value)? login,
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
abstract class _$$InitialEmailTextFormFieldImplCopyWith<$Res> {
  factory _$$InitialEmailTextFormFieldImplCopyWith(
          _$InitialEmailTextFormFieldImpl value,
          $Res Function(_$InitialEmailTextFormFieldImpl) then) =
      __$$InitialEmailTextFormFieldImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialEmailTextFormFieldImplCopyWithImpl<$Res>
    extends _$LoginBlocEventCopyWithImpl<$Res, _$InitialEmailTextFormFieldImpl>
    implements _$$InitialEmailTextFormFieldImplCopyWith<$Res> {
  __$$InitialEmailTextFormFieldImplCopyWithImpl(
      _$InitialEmailTextFormFieldImpl _value,
      $Res Function(_$InitialEmailTextFormFieldImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialEmailTextFormFieldImpl implements _InitialEmailTextFormField {
  const _$InitialEmailTextFormFieldImpl();

  @override
  String toString() {
    return 'LoginBlocEvent.initialEmailTextFormField()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialEmailTextFormFieldImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() initialEmailTextFormField,
    required TResult Function() initialPasswordTextFormField,
    required TResult Function(TextEditingController? emailTextFieldController,
            TextEditingController? passwordTextFieldController)
        login,
  }) {
    return initialEmailTextFormField();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? initialEmailTextFormField,
    TResult? Function()? initialPasswordTextFormField,
    TResult? Function(TextEditingController? emailTextFieldController,
            TextEditingController? passwordTextFieldController)?
        login,
  }) {
    return initialEmailTextFormField?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? initialEmailTextFormField,
    TResult Function()? initialPasswordTextFormField,
    TResult Function(TextEditingController? emailTextFieldController,
            TextEditingController? passwordTextFieldController)?
        login,
    required TResult orElse(),
  }) {
    if (initialEmailTextFormField != null) {
      return initialEmailTextFormField();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_InitialEmailTextFormField value)
        initialEmailTextFormField,
    required TResult Function(_InitialPasswordTextFormField value)
        initialPasswordTextFormField,
    required TResult Function(_Login value) login,
  }) {
    return initialEmailTextFormField(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_InitialEmailTextFormField value)?
        initialEmailTextFormField,
    TResult? Function(_InitialPasswordTextFormField value)?
        initialPasswordTextFormField,
    TResult? Function(_Login value)? login,
  }) {
    return initialEmailTextFormField?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_InitialEmailTextFormField value)?
        initialEmailTextFormField,
    TResult Function(_InitialPasswordTextFormField value)?
        initialPasswordTextFormField,
    TResult Function(_Login value)? login,
    required TResult orElse(),
  }) {
    if (initialEmailTextFormField != null) {
      return initialEmailTextFormField(this);
    }
    return orElse();
  }
}

abstract class _InitialEmailTextFormField implements LoginBlocEvent {
  const factory _InitialEmailTextFormField() = _$InitialEmailTextFormFieldImpl;
}

/// @nodoc
abstract class _$$InitialPasswordTextFormFieldImplCopyWith<$Res> {
  factory _$$InitialPasswordTextFormFieldImplCopyWith(
          _$InitialPasswordTextFormFieldImpl value,
          $Res Function(_$InitialPasswordTextFormFieldImpl) then) =
      __$$InitialPasswordTextFormFieldImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialPasswordTextFormFieldImplCopyWithImpl<$Res>
    extends _$LoginBlocEventCopyWithImpl<$Res,
        _$InitialPasswordTextFormFieldImpl>
    implements _$$InitialPasswordTextFormFieldImplCopyWith<$Res> {
  __$$InitialPasswordTextFormFieldImplCopyWithImpl(
      _$InitialPasswordTextFormFieldImpl _value,
      $Res Function(_$InitialPasswordTextFormFieldImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialPasswordTextFormFieldImpl
    implements _InitialPasswordTextFormField {
  const _$InitialPasswordTextFormFieldImpl();

  @override
  String toString() {
    return 'LoginBlocEvent.initialPasswordTextFormField()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialPasswordTextFormFieldImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() initialEmailTextFormField,
    required TResult Function() initialPasswordTextFormField,
    required TResult Function(TextEditingController? emailTextFieldController,
            TextEditingController? passwordTextFieldController)
        login,
  }) {
    return initialPasswordTextFormField();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? initialEmailTextFormField,
    TResult? Function()? initialPasswordTextFormField,
    TResult? Function(TextEditingController? emailTextFieldController,
            TextEditingController? passwordTextFieldController)?
        login,
  }) {
    return initialPasswordTextFormField?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? initialEmailTextFormField,
    TResult Function()? initialPasswordTextFormField,
    TResult Function(TextEditingController? emailTextFieldController,
            TextEditingController? passwordTextFieldController)?
        login,
    required TResult orElse(),
  }) {
    if (initialPasswordTextFormField != null) {
      return initialPasswordTextFormField();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_InitialEmailTextFormField value)
        initialEmailTextFormField,
    required TResult Function(_InitialPasswordTextFormField value)
        initialPasswordTextFormField,
    required TResult Function(_Login value) login,
  }) {
    return initialPasswordTextFormField(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_InitialEmailTextFormField value)?
        initialEmailTextFormField,
    TResult? Function(_InitialPasswordTextFormField value)?
        initialPasswordTextFormField,
    TResult? Function(_Login value)? login,
  }) {
    return initialPasswordTextFormField?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_InitialEmailTextFormField value)?
        initialEmailTextFormField,
    TResult Function(_InitialPasswordTextFormField value)?
        initialPasswordTextFormField,
    TResult Function(_Login value)? login,
    required TResult orElse(),
  }) {
    if (initialPasswordTextFormField != null) {
      return initialPasswordTextFormField(this);
    }
    return orElse();
  }
}

abstract class _InitialPasswordTextFormField implements LoginBlocEvent {
  const factory _InitialPasswordTextFormField() =
      _$InitialPasswordTextFormFieldImpl;
}

/// @nodoc
abstract class _$$LoginImplCopyWith<$Res> {
  factory _$$LoginImplCopyWith(
          _$LoginImpl value, $Res Function(_$LoginImpl) then) =
      __$$LoginImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {TextEditingController? emailTextFieldController,
      TextEditingController? passwordTextFieldController});
}

/// @nodoc
class __$$LoginImplCopyWithImpl<$Res>
    extends _$LoginBlocEventCopyWithImpl<$Res, _$LoginImpl>
    implements _$$LoginImplCopyWith<$Res> {
  __$$LoginImplCopyWithImpl(
      _$LoginImpl _value, $Res Function(_$LoginImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailTextFieldController = freezed,
    Object? passwordTextFieldController = freezed,
  }) {
    return _then(_$LoginImpl(
      emailTextFieldController: freezed == emailTextFieldController
          ? _value.emailTextFieldController
          : emailTextFieldController // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      passwordTextFieldController: freezed == passwordTextFieldController
          ? _value.passwordTextFieldController
          : passwordTextFieldController // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
    ));
  }
}

/// @nodoc

class _$LoginImpl implements _Login {
  const _$LoginImpl(
      {this.emailTextFieldController, this.passwordTextFieldController});

  @override
  final TextEditingController? emailTextFieldController;
  @override
  final TextEditingController? passwordTextFieldController;

  @override
  String toString() {
    return 'LoginBlocEvent.login(emailTextFieldController: $emailTextFieldController, passwordTextFieldController: $passwordTextFieldController)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginImpl &&
            (identical(
                    other.emailTextFieldController, emailTextFieldController) ||
                other.emailTextFieldController == emailTextFieldController) &&
            (identical(other.passwordTextFieldController,
                    passwordTextFieldController) ||
                other.passwordTextFieldController ==
                    passwordTextFieldController));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, emailTextFieldController, passwordTextFieldController);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      __$$LoginImplCopyWithImpl<_$LoginImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() initialEmailTextFormField,
    required TResult Function() initialPasswordTextFormField,
    required TResult Function(TextEditingController? emailTextFieldController,
            TextEditingController? passwordTextFieldController)
        login,
  }) {
    return login(emailTextFieldController, passwordTextFieldController);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? initialEmailTextFormField,
    TResult? Function()? initialPasswordTextFormField,
    TResult? Function(TextEditingController? emailTextFieldController,
            TextEditingController? passwordTextFieldController)?
        login,
  }) {
    return login?.call(emailTextFieldController, passwordTextFieldController);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? initialEmailTextFormField,
    TResult Function()? initialPasswordTextFormField,
    TResult Function(TextEditingController? emailTextFieldController,
            TextEditingController? passwordTextFieldController)?
        login,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(emailTextFieldController, passwordTextFieldController);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
    required TResult Function(_InitialEmailTextFormField value)
        initialEmailTextFormField,
    required TResult Function(_InitialPasswordTextFormField value)
        initialPasswordTextFormField,
    required TResult Function(_Login value) login,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
    TResult? Function(_InitialEmailTextFormField value)?
        initialEmailTextFormField,
    TResult? Function(_InitialPasswordTextFormField value)?
        initialPasswordTextFormField,
    TResult? Function(_Login value)? login,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    TResult Function(_InitialEmailTextFormField value)?
        initialEmailTextFormField,
    TResult Function(_InitialPasswordTextFormField value)?
        initialPasswordTextFormField,
    TResult Function(_Login value)? login,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _Login implements LoginBlocEvent {
  const factory _Login(
      {final TextEditingController? emailTextFieldController,
      final TextEditingController? passwordTextFieldController}) = _$LoginImpl;

  TextEditingController? get emailTextFieldController;
  TextEditingController? get passwordTextFieldController;
  @JsonKey(ignore: true)
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoginBlocState {
  UIStatus get status => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  PasswordOptionEnum get passwordOptionEnum =>
      throw _privateConstructorUsedError;
  EmailFieldProperties get emailFieldProperties =>
      throw _privateConstructorUsedError;
  PasswordFieldProperties get passwordFieldProperties =>
      throw _privateConstructorUsedError;

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
      String token,
      PasswordOptionEnum passwordOptionEnum,
      EmailFieldProperties emailFieldProperties,
      PasswordFieldProperties passwordFieldProperties});

  $UIStatusCopyWith<$Res> get status;
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
    Object? token = null,
    Object? passwordOptionEnum = null,
    Object? emailFieldProperties = null,
    Object? passwordFieldProperties = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UIStatus,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      passwordOptionEnum: null == passwordOptionEnum
          ? _value.passwordOptionEnum
          : passwordOptionEnum // ignore: cast_nullable_to_non_nullable
              as PasswordOptionEnum,
      emailFieldProperties: null == emailFieldProperties
          ? _value.emailFieldProperties
          : emailFieldProperties // ignore: cast_nullable_to_non_nullable
              as EmailFieldProperties,
      passwordFieldProperties: null == passwordFieldProperties
          ? _value.passwordFieldProperties
          : passwordFieldProperties // ignore: cast_nullable_to_non_nullable
              as PasswordFieldProperties,
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
abstract class _$$LoginBlocStateImplCopyWith<$Res>
    implements $LoginBlocStateCopyWith<$Res> {
  factory _$$LoginBlocStateImplCopyWith(_$LoginBlocStateImpl value,
          $Res Function(_$LoginBlocStateImpl) then) =
      __$$LoginBlocStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UIStatus status,
      String token,
      PasswordOptionEnum passwordOptionEnum,
      EmailFieldProperties emailFieldProperties,
      PasswordFieldProperties passwordFieldProperties});

  @override
  $UIStatusCopyWith<$Res> get status;
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
    Object? token = null,
    Object? passwordOptionEnum = null,
    Object? emailFieldProperties = null,
    Object? passwordFieldProperties = null,
  }) {
    return _then(_$LoginBlocStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UIStatus,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      passwordOptionEnum: null == passwordOptionEnum
          ? _value.passwordOptionEnum
          : passwordOptionEnum // ignore: cast_nullable_to_non_nullable
              as PasswordOptionEnum,
      emailFieldProperties: null == emailFieldProperties
          ? _value.emailFieldProperties
          : emailFieldProperties // ignore: cast_nullable_to_non_nullable
              as EmailFieldProperties,
      passwordFieldProperties: null == passwordFieldProperties
          ? _value.passwordFieldProperties
          : passwordFieldProperties // ignore: cast_nullable_to_non_nullable
              as PasswordFieldProperties,
    ));
  }
}

/// @nodoc

class _$LoginBlocStateImpl implements _LoginBlocState {
  _$LoginBlocStateImpl(
      {this.status = const UIInitial(),
      this.token = '',
      this.passwordOptionEnum = PasswordOptionEnum.rememberAndForgot,
      this.emailFieldProperties = const EmailFieldProperties(
          autovalidateMode: AutovalidateMode.disabled),
      this.passwordFieldProperties = const PasswordFieldProperties(
          autovalidateMode: AutovalidateMode.disabled)});

  @override
  @JsonKey()
  final UIStatus status;
  @override
  @JsonKey()
  final String token;
  @override
  @JsonKey()
  final PasswordOptionEnum passwordOptionEnum;
  @override
  @JsonKey()
  final EmailFieldProperties emailFieldProperties;
  @override
  @JsonKey()
  final PasswordFieldProperties passwordFieldProperties;

  @override
  String toString() {
    return 'LoginBlocState(status: $status, token: $token, passwordOptionEnum: $passwordOptionEnum, emailFieldProperties: $emailFieldProperties, passwordFieldProperties: $passwordFieldProperties)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginBlocStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.passwordOptionEnum, passwordOptionEnum) ||
                other.passwordOptionEnum == passwordOptionEnum) &&
            (identical(other.emailFieldProperties, emailFieldProperties) ||
                other.emailFieldProperties == emailFieldProperties) &&
            (identical(
                    other.passwordFieldProperties, passwordFieldProperties) ||
                other.passwordFieldProperties == passwordFieldProperties));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, token,
      passwordOptionEnum, emailFieldProperties, passwordFieldProperties);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginBlocStateImplCopyWith<_$LoginBlocStateImpl> get copyWith =>
      __$$LoginBlocStateImplCopyWithImpl<_$LoginBlocStateImpl>(
          this, _$identity);
}

abstract class _LoginBlocState implements LoginBlocState {
  factory _LoginBlocState(
          {final UIStatus status,
          final String token,
          final PasswordOptionEnum passwordOptionEnum,
          final EmailFieldProperties emailFieldProperties,
          final PasswordFieldProperties passwordFieldProperties}) =
      _$LoginBlocStateImpl;

  @override
  UIStatus get status;
  @override
  String get token;
  @override
  PasswordOptionEnum get passwordOptionEnum;
  @override
  EmailFieldProperties get emailFieldProperties;
  @override
  PasswordFieldProperties get passwordFieldProperties;
  @override
  @JsonKey(ignore: true)
  _$$LoginBlocStateImplCopyWith<_$LoginBlocStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
