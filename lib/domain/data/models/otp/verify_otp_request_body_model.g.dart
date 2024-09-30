// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_otp_request_body_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VerifyOtpRequestBodyModel _$VerifyOtpRequestBodyModelFromJson(
        Map<String, dynamic> json) =>
    VerifyOtpRequestBodyModel(
      token: json['token'] as String,
      code: json['code'] as String,
    );

Map<String, dynamic> _$VerifyOtpRequestBodyModelToJson(
        VerifyOtpRequestBodyModel instance) =>
    <String, dynamic>{
      'token': instance.token,
      'code': instance.code,
    };
