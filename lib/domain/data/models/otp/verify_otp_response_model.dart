import 'package:json_annotation/json_annotation.dart';

part 'verify_otp_response_model.g.dart';

@JsonSerializable()
class VerifyOtpResponseModel {
  @JsonKey(name: "message")
  final String message;
  @JsonKey(name: "status")
  final bool status;

  VerifyOtpResponseModel({
    required this.message,
    required this.status,
  });

  VerifyOtpResponseModel copyWith({
    String? message,
    bool? status,
  }) =>
      VerifyOtpResponseModel(
        message: message ?? this.message,
        status: status ?? this.status,
      );

  factory VerifyOtpResponseModel.fromJson(Map<String, dynamic> json) =>
      _$VerifyOtpResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$VerifyOtpResponseModelToJson(this);
}
