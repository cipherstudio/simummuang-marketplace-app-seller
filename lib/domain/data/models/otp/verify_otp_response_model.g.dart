// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_otp_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VerifyOtpResponseModel _$VerifyOtpResponseModelFromJson(
        Map<String, dynamic> json) =>
    VerifyOtpResponseModel(
      message: json['message'] as String,
      status: json['status'] as String,
    );

Map<String, dynamic> _$VerifyOtpResponseModelToJson(
        VerifyOtpResponseModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'status': instance.status,
    };
