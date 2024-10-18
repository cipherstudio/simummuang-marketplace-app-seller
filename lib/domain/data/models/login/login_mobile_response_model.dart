import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_mobile_response_model.g.dart';

@JsonSerializable()
class LoginMobileResponseModel {
  @JsonKey(name: "status")
  final String status;
  @JsonKey(name: "message")
  final String message;
  @JsonKey(name: "token")
  final String token;
  @JsonKey(name: "mobile")
  final String mobile;

  const LoginMobileResponseModel({
    required this.status,
    required this.message,
    required this.token,
    required this.mobile,
  });

  factory LoginMobileResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginMobileResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$LoginMobileResponseModelToJson(this);
}
