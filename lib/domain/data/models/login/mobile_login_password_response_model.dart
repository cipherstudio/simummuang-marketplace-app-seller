import 'package:json_annotation/json_annotation.dart';

part 'mobile_login_password_response_model.g.dart';

@JsonSerializable()
class MobileLoginPasswordResponseModel {
  @JsonKey(name: "status")
  final String? status;
  @JsonKey(name: "message")
  final String? message;
  @JsonKey(name: "token")
  final String? token;
  @JsonKey(name: "mobile")
  final String? mobile;

  MobileLoginPasswordResponseModel({
    this.status,
    this.message,
    this.token,
    this.mobile,
  });

  MobileLoginPasswordResponseModel copyWith({
    String? status,
    String? message,
    String? token,
    String? mobile,
  }) =>
      MobileLoginPasswordResponseModel(
        status: status ?? this.status,
        message: message ?? this.message,
        token: token ?? this.token,
        mobile: mobile ?? this.mobile,
      );

  factory MobileLoginPasswordResponseModel.fromJson(
          Map<String, dynamic> json) =>
      _$MobileLoginPasswordResponseModelFromJson(json);

  Map<String, dynamic> toJson() =>
      _$MobileLoginPasswordResponseModelToJson(this);
}
