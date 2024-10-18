// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_mobile_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginMobileResponseModel _$LoginMobileResponseModelFromJson(
        Map<String, dynamic> json) =>
    LoginMobileResponseModel(
      status: json['status'] as String,
      message: json['message'] as String,
      token: json['token'] as String,
      mobile: json['mobile'] as String,
    );

Map<String, dynamic> _$LoginMobileResponseModelToJson(
        LoginMobileResponseModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'token': instance.token,
      'mobile': instance.mobile,
    };
