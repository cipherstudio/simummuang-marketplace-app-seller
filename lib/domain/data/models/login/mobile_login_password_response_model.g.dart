// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mobile_login_password_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MobileLoginPasswordResponseModel _$MobileLoginPasswordResponseModelFromJson(
        Map<String, dynamic> json) =>
    MobileLoginPasswordResponseModel(
      status: json['status'] as String?,
      message: json['message'] as String?,
      token: json['token'] as String?,
      mobile: json['mobile'] as String?,
    );

Map<String, dynamic> _$MobileLoginPasswordResponseModelToJson(
        MobileLoginPasswordResponseModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'token': instance.token,
      'mobile': instance.mobile,
    };
