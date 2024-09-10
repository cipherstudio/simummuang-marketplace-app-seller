import 'package:freezed_annotation/freezed_annotation.dart';

part 'ui_status.freezed.dart';

/// Ui status: initial, loading, loadSuccess and loadFailed
@Freezed(fromJson: false, toJson: false)
class UIStatus with _$UIStatus {
  const UIStatus._();

  const factory UIStatus.initial() = UIInitial;

  const factory UIStatus.loading() = UILoading;

  const factory UIStatus.loadFailed({
    required String message,
    dynamic error,
  }) = UILoadFailed;

  const factory UIStatus.loadSuccess({
    String? message,
  }) = UILoadSuccess;

  @override
  // ignore: non_nullable_equals_parameter
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UIStatus);
  }

  @override
  int get hashCode => Object.hash(
        runtimeType,
        const DeepCollectionEquality().hash(UIStatus),
      );
}
