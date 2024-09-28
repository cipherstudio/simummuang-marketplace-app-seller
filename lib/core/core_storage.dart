import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class CoreStorage {
  final String _secureStorageName;
  final String _afterInstallKey;

  SharedPreferences? _sharedPreferences;
  FlutterSecureStorage? _flutterSecureStorage;

  @protected
  SharedPreferences? get sharedPreferences => _sharedPreferences;
  @protected
  FlutterSecureStorage? get secureStorage => _flutterSecureStorage;

  late Completer _initialCompletor;

  CoreStorage({
    required String secureStorageName,
    required String afterInstallKey,
  })  : _secureStorageName = secureStorageName,
        _afterInstallKey = afterInstallKey {
    _init();
  }

  Future<void> waitForCompleteInitialize() {
    if (_initialCompletor.isCompleted) {
      return Future.value();
    }
    return _initialCompletor.future;
  }

  bool get _isAfterInstall {
    checkSharePref();
    return _sharedPreferences!.getBool(_afterInstallKey) ?? true;
  }

  set _isAfterInstall(bool value) {
    checkSharePref();
    _sharedPreferences!.setBool(_afterInstallKey, value);
  }

  @protected
  void checkSharePref() {
    assert(_sharedPreferences != null,
        'SharePreference is not initial, Maybe you forgot to call init() before use');
  }

  @protected
  void checkSecureStorage() {
    assert(_flutterSecureStorage != null,
        'Secure storage is not initial, Maybe you forgot to call init() before use');
  }

  void _init() async {
    _initialCompletor = Completer();
    _sharedPreferences ??= await SharedPreferences.getInstance();

    _flutterSecureStorage ??= FlutterSecureStorage(
        aOptions: AndroidOptions.defaultOptions.copyWith(
            encryptedSharedPreferences: true,
            sharedPreferencesName: _secureStorageName),
        iOptions: IOSOptions.defaultOptions
            .copyWith(accountName: _secureStorageName));

    await _checkIsAfterInstall();
    _initialCompletor.complete();
  }

  Future _checkIsAfterInstall() async {
    if (_isAfterInstall) {
      _isAfterInstall = false;
      await _flutterSecureStorage!.deleteAll();
    }
  }
}

@protected
extension FlutterSecureStorageExt on FlutterSecureStorage {
  Future<bool> readBool({required String key, bool callback = false}) async {
    String? value = await read(key: key);
    return value == null ? callback : value == '1';
  }

  Future<void> writeBool({required String key, required bool value}) =>
      write(key: key, value: value ? '1' : '0');
}
