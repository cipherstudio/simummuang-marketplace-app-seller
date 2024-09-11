// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ui_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UIStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message, dynamic error) loadFailed,
    required TResult Function(String? message) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message, dynamic error)? loadFailed,
    TResult? Function(String? message)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message, dynamic error)? loadFailed,
    TResult Function(String? message)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UIInitial value) initial,
    required TResult Function(UILoading value) loading,
    required TResult Function(UILoadFailed value) loadFailed,
    required TResult Function(UILoadSuccess value) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UIInitial value)? initial,
    TResult? Function(UILoading value)? loading,
    TResult? Function(UILoadFailed value)? loadFailed,
    TResult? Function(UILoadSuccess value)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UIInitial value)? initial,
    TResult Function(UILoading value)? loading,
    TResult Function(UILoadFailed value)? loadFailed,
    TResult Function(UILoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UIStatusCopyWith<$Res> {
  factory $UIStatusCopyWith(UIStatus value, $Res Function(UIStatus) then) =
      _$UIStatusCopyWithImpl<$Res, UIStatus>;
}

/// @nodoc
class _$UIStatusCopyWithImpl<$Res, $Val extends UIStatus>
    implements $UIStatusCopyWith<$Res> {
  _$UIStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UIInitialImplCopyWith<$Res> {
  factory _$$UIInitialImplCopyWith(
          _$UIInitialImpl value, $Res Function(_$UIInitialImpl) then) =
      __$$UIInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UIInitialImplCopyWithImpl<$Res>
    extends _$UIStatusCopyWithImpl<$Res, _$UIInitialImpl>
    implements _$$UIInitialImplCopyWith<$Res> {
  __$$UIInitialImplCopyWithImpl(
      _$UIInitialImpl _value, $Res Function(_$UIInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UIInitialImpl extends UIInitial {
  const _$UIInitialImpl() : super._();

  @override
  String toString() {
    return 'UIStatus.initial()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message, dynamic error) loadFailed,
    required TResult Function(String? message) loadSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message, dynamic error)? loadFailed,
    TResult? Function(String? message)? loadSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message, dynamic error)? loadFailed,
    TResult Function(String? message)? loadSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UIInitial value) initial,
    required TResult Function(UILoading value) loading,
    required TResult Function(UILoadFailed value) loadFailed,
    required TResult Function(UILoadSuccess value) loadSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UIInitial value)? initial,
    TResult? Function(UILoading value)? loading,
    TResult? Function(UILoadFailed value)? loadFailed,
    TResult? Function(UILoadSuccess value)? loadSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UIInitial value)? initial,
    TResult Function(UILoading value)? loading,
    TResult Function(UILoadFailed value)? loadFailed,
    TResult Function(UILoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class UIInitial extends UIStatus {
  const factory UIInitial() = _$UIInitialImpl;
  const UIInitial._() : super._();
}

/// @nodoc
abstract class _$$UILoadingImplCopyWith<$Res> {
  factory _$$UILoadingImplCopyWith(
          _$UILoadingImpl value, $Res Function(_$UILoadingImpl) then) =
      __$$UILoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UILoadingImplCopyWithImpl<$Res>
    extends _$UIStatusCopyWithImpl<$Res, _$UILoadingImpl>
    implements _$$UILoadingImplCopyWith<$Res> {
  __$$UILoadingImplCopyWithImpl(
      _$UILoadingImpl _value, $Res Function(_$UILoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UILoadingImpl extends UILoading {
  const _$UILoadingImpl() : super._();

  @override
  String toString() {
    return 'UIStatus.loading()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message, dynamic error) loadFailed,
    required TResult Function(String? message) loadSuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message, dynamic error)? loadFailed,
    TResult? Function(String? message)? loadSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message, dynamic error)? loadFailed,
    TResult Function(String? message)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UIInitial value) initial,
    required TResult Function(UILoading value) loading,
    required TResult Function(UILoadFailed value) loadFailed,
    required TResult Function(UILoadSuccess value) loadSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UIInitial value)? initial,
    TResult? Function(UILoading value)? loading,
    TResult? Function(UILoadFailed value)? loadFailed,
    TResult? Function(UILoadSuccess value)? loadSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UIInitial value)? initial,
    TResult Function(UILoading value)? loading,
    TResult Function(UILoadFailed value)? loadFailed,
    TResult Function(UILoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class UILoading extends UIStatus {
  const factory UILoading() = _$UILoadingImpl;
  const UILoading._() : super._();
}

/// @nodoc
abstract class _$$UILoadFailedImplCopyWith<$Res> {
  factory _$$UILoadFailedImplCopyWith(
          _$UILoadFailedImpl value, $Res Function(_$UILoadFailedImpl) then) =
      __$$UILoadFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, dynamic error});
}

/// @nodoc
class __$$UILoadFailedImplCopyWithImpl<$Res>
    extends _$UIStatusCopyWithImpl<$Res, _$UILoadFailedImpl>
    implements _$$UILoadFailedImplCopyWith<$Res> {
  __$$UILoadFailedImplCopyWithImpl(
      _$UILoadFailedImpl _value, $Res Function(_$UILoadFailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? error = freezed,
  }) {
    return _then(_$UILoadFailedImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$UILoadFailedImpl extends UILoadFailed {
  const _$UILoadFailedImpl({required this.message, this.error}) : super._();

  @override
  final String message;
  @override
  final dynamic error;

  @override
  String toString() {
    return 'UIStatus.loadFailed(message: $message, error: $error)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UILoadFailedImplCopyWith<_$UILoadFailedImpl> get copyWith =>
      __$$UILoadFailedImplCopyWithImpl<_$UILoadFailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message, dynamic error) loadFailed,
    required TResult Function(String? message) loadSuccess,
  }) {
    return loadFailed(message, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message, dynamic error)? loadFailed,
    TResult? Function(String? message)? loadSuccess,
  }) {
    return loadFailed?.call(message, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message, dynamic error)? loadFailed,
    TResult Function(String? message)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadFailed != null) {
      return loadFailed(message, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UIInitial value) initial,
    required TResult Function(UILoading value) loading,
    required TResult Function(UILoadFailed value) loadFailed,
    required TResult Function(UILoadSuccess value) loadSuccess,
  }) {
    return loadFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UIInitial value)? initial,
    TResult? Function(UILoading value)? loading,
    TResult? Function(UILoadFailed value)? loadFailed,
    TResult? Function(UILoadSuccess value)? loadSuccess,
  }) {
    return loadFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UIInitial value)? initial,
    TResult Function(UILoading value)? loading,
    TResult Function(UILoadFailed value)? loadFailed,
    TResult Function(UILoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadFailed != null) {
      return loadFailed(this);
    }
    return orElse();
  }
}

abstract class UILoadFailed extends UIStatus {
  const factory UILoadFailed(
      {required final String message,
      final dynamic error}) = _$UILoadFailedImpl;
  const UILoadFailed._() : super._();

  String get message;
  dynamic get error;
  @JsonKey(ignore: true)
  _$$UILoadFailedImplCopyWith<_$UILoadFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UILoadSuccessImplCopyWith<$Res> {
  factory _$$UILoadSuccessImplCopyWith(
          _$UILoadSuccessImpl value, $Res Function(_$UILoadSuccessImpl) then) =
      __$$UILoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$UILoadSuccessImplCopyWithImpl<$Res>
    extends _$UIStatusCopyWithImpl<$Res, _$UILoadSuccessImpl>
    implements _$$UILoadSuccessImplCopyWith<$Res> {
  __$$UILoadSuccessImplCopyWithImpl(
      _$UILoadSuccessImpl _value, $Res Function(_$UILoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$UILoadSuccessImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UILoadSuccessImpl extends UILoadSuccess {
  const _$UILoadSuccessImpl({this.message}) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'UIStatus.loadSuccess(message: $message)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UILoadSuccessImplCopyWith<_$UILoadSuccessImpl> get copyWith =>
      __$$UILoadSuccessImplCopyWithImpl<_$UILoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message, dynamic error) loadFailed,
    required TResult Function(String? message) loadSuccess,
  }) {
    return loadSuccess(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message, dynamic error)? loadFailed,
    TResult? Function(String? message)? loadSuccess,
  }) {
    return loadSuccess?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message, dynamic error)? loadFailed,
    TResult Function(String? message)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UIInitial value) initial,
    required TResult Function(UILoading value) loading,
    required TResult Function(UILoadFailed value) loadFailed,
    required TResult Function(UILoadSuccess value) loadSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UIInitial value)? initial,
    TResult? Function(UILoading value)? loading,
    TResult? Function(UILoadFailed value)? loadFailed,
    TResult? Function(UILoadSuccess value)? loadSuccess,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UIInitial value)? initial,
    TResult Function(UILoading value)? loading,
    TResult Function(UILoadFailed value)? loadFailed,
    TResult Function(UILoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class UILoadSuccess extends UIStatus {
  const factory UILoadSuccess({final String? message}) = _$UILoadSuccessImpl;
  const UILoadSuccess._() : super._();

  String? get message;
  @JsonKey(ignore: true)
  _$$UILoadSuccessImplCopyWith<_$UILoadSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
