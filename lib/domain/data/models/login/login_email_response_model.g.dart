// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_email_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginEmailResponseModel _$LoginEmailResponseModelFromJson(
        Map<String, dynamic> json) =>
    LoginEmailResponseModel(
      status: json['status'] as String,
      message: json['message'] as String,
      token: json['token'] as String,
      mobile: json['mobile'] as String,
    );

Map<String, dynamic> _$LoginEmailResponseModelToJson(
        LoginEmailResponseModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'token': instance.token,
      'mobile': instance.mobile,
    };
