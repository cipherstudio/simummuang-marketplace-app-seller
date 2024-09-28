import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_request_model.g.dart';

@JsonSerializable()
class LoginRequestModel {
  @JsonKey(name: "username")
  final String username;
  @JsonKey(name: "password")
  final String password;

  const LoginRequestModel({
    required this.username,
    required this.password,
  });

  factory LoginRequestModel.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestModelFromJson(json);

  Map<String, dynamic> toJson() => _$LoginRequestModelToJson(this);
}
