import 'package:freezed_annotation/freezed_annotation.dart';
part 'request_otp_request_body_model.g.dart';

@JsonSerializable()
class RequestOtpRequestBody {
  @JsonKey(name: "number")
  final String number;

  RequestOtpRequestBody({
    required this.number,
  });

  RequestOtpRequestBody copyWith({
    String? number,
  }) =>
      RequestOtpRequestBody(
        number: number ?? this.number,
      );

  factory RequestOtpRequestBody.fromJson(Map<String, dynamic> json) =>
      _$RequestOtpRequestBodyFromJson(json);

  Map<String, dynamic> toJson() => _$RequestOtpRequestBodyToJson(this);
}
