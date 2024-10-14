// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_otp_request_body_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RequestOtpRequestBody _$RequestOtpRequestBodyFromJson(
        Map<String, dynamic> json) =>
    RequestOtpRequestBody(
      number: json['number'] as String,
      mode: json['mode'] as String? ?? '',
    );

Map<String, dynamic> _$RequestOtpRequestBodyToJson(
        RequestOtpRequestBody instance) =>
    <String, dynamic>{
      'number': instance.number,
      'mode': instance.mode,
    };
