import 'package:freezed_annotation/freezed_annotation.dart';
part 'reset_password_request_model.g.dart';

@JsonSerializable()
class ResetPasswordRequestModel {
  @JsonKey(name: "email")
  final String email;
  @JsonKey(name: "resetToken")
  final String resetToken;
  @JsonKey(name: "newPassword")
  final String newPassword;

  const ResetPasswordRequestModel({
    required this.email,
    required this.resetToken,
    required this.newPassword,
  });

  factory ResetPasswordRequestModel.fromJson(Map<String, dynamic> json) =>
      _$ResetPasswordRequestModelFromJson(json);

  Map<String, dynamic> toJson() => _$ResetPasswordRequestModelToJson(this);
}
