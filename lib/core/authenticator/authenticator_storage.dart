import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:smm_seller_application/core/authenticator/credential.dart';
import 'package:smm_seller_application/core/core_storage.dart';
import 'package:smm_seller_application/domain/data/models/otp/request_otp_response_model.dart';

class AuthenticatorStorage extends CoreStorage {
  AuthenticatorStorage()
      : super(
          secureStorageName: 'authenticator_secure_storage',
          afterInstallKey: 'authenticator_install_key',
        );

  Future<Credential?> getCredential() async {
    checkSecureStorage();
    String? json = await secureStorage!.read(key: Keys.credentialKey);
    return json != null ? Credential.fromJson(jsonDecode(json)) : null;
  }

  Future<void> setCredential(Credential? credential) async {
    checkSecureStorage();
    Map<String, dynamic>? map = credential?.toJson();
    if (map != null) {
      String json = jsonEncode(map);
      await secureStorage!.write(key: Keys.credentialKey, value: json);
    } else {
      await secureStorage!.delete(key: Keys.credentialKey);
    }
  }

  bool? getRememberPassword() {
    checkSharePref();
    return sharedPreferences!.getBool(Keys.rememberPasswordFlag);
  }

  Future<void> setRememberPassword(bool isRememberPassword) async {
    checkSharePref();
    await sharedPreferences!
        .setBool(Keys.rememberPasswordFlag, isRememberPassword);
  }

  Future<void> setOTPResponse(
      RequestOtpResponseModel? requestOtpResponseModel) async {
    checkSharePref();
    try {
      if (requestOtpResponseModel != null) {
        await sharedPreferences!.setString(
            Keys.otpResponse, jsonEncode(requestOtpResponseModel.toJson()));
      }
      // ignore: empty_catches
    } catch (e) {}
  }

  RequestOtpResponseModel? getOTPResponse() {
    checkSharePref();
    try {
      return RequestOtpResponseModel.fromJson(
          jsonDecode(sharedPreferences!.getString(Keys.otpResponse) ?? ''));
    } catch (e) {
      return null;
    }
  }
}

@protected
abstract class Keys {
  static const String credentialKey = 'credentialKey';
  static const String rememberPasswordFlag = 'rememberPasswordFlag';
  static const String otpResponse = 'otpResponse';
}
