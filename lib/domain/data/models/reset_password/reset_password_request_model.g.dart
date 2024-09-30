// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_password_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResetPasswordRequestModel _$ResetPasswordRequestModelFromJson(
        Map<String, dynamic> json) =>
    ResetPasswordRequestModel(
      mobile: json['mobile'] as String,
      type: json['type'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$ResetPasswordRequestModelToJson(
        ResetPasswordRequestModel instance) =>
    <String, dynamic>{
      'mobile': instance.mobile,
      'type': instance.type,
      'password': instance.password,
    };
