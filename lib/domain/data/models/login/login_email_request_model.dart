import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_email_request_model.g.dart';

@JsonSerializable()
class LoginEmailRequestModel {
  @JsonKey(name: "email")
  final String email;

  const LoginEmailRequestModel({
    required this.email,
  });

  factory LoginEmailRequestModel.fromJson(Map<String, dynamic> json) =>
      _$LoginEmailRequestModelFromJson(json);

  Map<String, dynamic> toJson() => _$LoginEmailRequestModelToJson(this);
}
