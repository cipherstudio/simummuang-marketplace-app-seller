import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_email_response_model.g.dart';

@JsonSerializable()
class LoginEmailResponseModel {
  @JsonKey(name: "status")
  final String status;
  @JsonKey(name: "message")
  final String message;
  @JsonKey(name: "token")
  final String token;
  @JsonKey(name: "mobile")
  final String mobile;

  const LoginEmailResponseModel({
    required this.status,
    required this.message,
    required this.token,
    required this.mobile,
  });

  factory LoginEmailResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginEmailResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$LoginEmailResponseModelToJson(this);
}
