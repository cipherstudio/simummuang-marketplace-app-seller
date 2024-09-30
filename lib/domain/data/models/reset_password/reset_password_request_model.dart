import 'package:freezed_annotation/freezed_annotation.dart';
part 'reset_password_request_model.g.dart';

@JsonSerializable()
class ResetPasswordRequestModel {
  @JsonKey(name: "mobile")
  final String mobile;
  @JsonKey(name: "type")
  final String type;
  @JsonKey(name: "password")
  final String password;

  const ResetPasswordRequestModel({
    required this.mobile,
    required this.type,
    required this.password,
  });

  factory ResetPasswordRequestModel.fromJson(Map<String, dynamic> json) =>
      _$ResetPasswordRequestModelFromJson(json);

  Map<String, dynamic> toJson() => _$ResetPasswordRequestModelToJson(this);
}
