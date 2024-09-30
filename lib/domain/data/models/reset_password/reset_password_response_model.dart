import 'package:freezed_annotation/freezed_annotation.dart';
part 'reset_password_response_model.g.dart';

@JsonSerializable()
class ResetPasswordResponseModel {
  @JsonKey(name: "succes")
  final bool succes;

  const ResetPasswordResponseModel({
    required this.succes,
  });

  factory ResetPasswordResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ResetPasswordResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$ResetPasswordResponseModelToJson(this);
}
