import 'package:json_annotation/json_annotation.dart';

part 'verify_otp_request_body_model.g.dart';

@JsonSerializable()
class VerifyOtpRequestBodyModel {
  @JsonKey(name: "token")
  final String token;
  @JsonKey(name: "code")
  final String code;

  VerifyOtpRequestBodyModel({
    required this.token,
    required this.code,
  });

  VerifyOtpRequestBodyModel copyWith({
    String? token,
    String? code,
  }) =>
      VerifyOtpRequestBodyModel(
        token: token ?? this.token,
        code: code ?? this.code,
      );

  factory VerifyOtpRequestBodyModel.fromJson(Map<String, dynamic> json) =>
      _$VerifyOtpRequestBodyModelFromJson(json);

  Map<String, dynamic> toJson() => _$VerifyOtpRequestBodyModelToJson(this);
}
