// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_otp_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RequestOtpResponseModel _$RequestOtpResponseModelFromJson(
        Map<String, dynamic> json) =>
    RequestOtpResponseModel(
      number: json['number'] as String,
      token: json['token'] as String,
      refno: json['refno'] as String,
      status: json['status'] as String,
    );

Map<String, dynamic> _$RequestOtpResponseModelToJson(
        RequestOtpResponseModel instance) =>
    <String, dynamic>{
      'number': instance.number,
      'token': instance.token,
      'refno': instance.refno,
      'status': instance.status,
    };
