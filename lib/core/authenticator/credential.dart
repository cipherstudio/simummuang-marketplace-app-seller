import 'package:json_annotation/json_annotation.dart';
import 'package:smm_seller_application/core/authenticator/authenticator_service.dart';

part 'credential.g.dart';

@JsonSerializable()
class Credential {
  final AuthenType authenType;
  final String accessToken;
  final String refreshToken;
  // millisec from epoch
  final int expireAt;

  Credential({
    required this.authenType,
    required this.accessToken,
    required this.refreshToken,
    required this.expireAt,
  });

  factory Credential.notAuthorized({
    required String accessToken,
    required String refreshToken,
    required int expireAt,
  }) =>
      Credential(
        authenType: AuthenType.notAuthorized,
        accessToken: accessToken,
        refreshToken: refreshToken,
        expireAt: expireAt,
      );

  factory Credential.authorized({
    required String accessToken,
    required String refreshToken,
    required int expireAt,
  }) =>
      Credential(
        authenType: AuthenType.authorized,
        accessToken: accessToken,
        refreshToken: refreshToken,
        expireAt: expireAt,
      );

  bool isExpired({
    int? compareTime,
  }) {
    compareTime ??= DateTime.now().millisecondsSinceEpoch;
    return expireAt <= compareTime;
  }

  Credential copyWith({
    AuthenType? authenType,
    String? accessToken,
    String? refreshToken,
    int? expireAt,
  }) {
    return Credential(
      authenType: authenType ?? this.authenType,
      accessToken: accessToken ?? this.accessToken,
      refreshToken: refreshToken ?? this.refreshToken,
      expireAt: expireAt ?? this.expireAt,
    );
  }

  Map<String, dynamic> toJson() => _$CredentialToJson(this);

  factory Credential.fromJson(Map<String, dynamic> json) =>
      _$CredentialFromJson(json);
}
