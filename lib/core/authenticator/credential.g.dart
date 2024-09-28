// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credential.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Credential _$CredentialFromJson(Map<String, dynamic> json) => Credential(
      authenType: $enumDecode(_$AuthenTypeEnumMap, json['authenType']),
      accessToken: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String,
      expireAt: json['expireAt'] as int,
    );

Map<String, dynamic> _$CredentialToJson(Credential instance) =>
    <String, dynamic>{
      'authenType': _$AuthenTypeEnumMap[instance.authenType]!,
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'expireAt': instance.expireAt,
    };

const _$AuthenTypeEnumMap = {
  AuthenType.notAuthorized: 'notAuthorized',
  AuthenType.authorized: 'authorized',
};
