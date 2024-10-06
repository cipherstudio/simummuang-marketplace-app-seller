import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_otp_response_model.g.dart';

@JsonSerializable()
class RequestOtpResponseModel {
  @JsonKey(name: "number")
  final String number;
  @JsonKey(name: "token")
  final String token;
  @JsonKey(name: "refno")
  final String refno;
  @JsonKey(name: "status")
  final String status;
  @JsonKey(name: "message")
  final String message;
  final DateTime? expiredTime;

  RequestOtpResponseModel(
      {required this.number,
      required this.token,
      required this.refno,
      required this.status,
      required this.message,
      this.expiredTime});

  RequestOtpResponseModel copyWith(
          {String? number,
          String? token,
          String? refno,
          String? status,
          String? message,
          DateTime? expiredTime}) =>
      RequestOtpResponseModel(
        number: number ?? this.number,
        token: token ?? this.token,
        refno: refno ?? this.refno,
        status: status ?? this.status,
        message: message ?? this.message,
        expiredTime: expiredTime ?? this.expiredTime,
      );

  factory RequestOtpResponseModel.fromJson(Map<String, dynamic> json) =>
      _$RequestOtpResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$RequestOtpResponseModelToJson(this);
}
