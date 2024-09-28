import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:smm_application/core/authenticator/auth_exception.dart';
import 'package:smm_application/core/authenticator/authenticator_storage.dart';
import 'package:smm_application/core/authenticator/credential.dart';
import 'package:smm_application/domain/repository/auth_repository.dart';
import 'package:smm_application/core/authenticator/interceptor/authentication_api_interceptor.dart';
import 'package:smm_application/extensions/core_extension.dart';

import 'package:smm_application/injector/app_injector.dart';

import 'package:uuid/uuid.dart';

typedef AuthenStateListener = VoidCallback;
typedef AskToRetryCredential = Future<bool> Function(dynamic error);
typedef UnAuthorizedCallback = Future Function();
typedef SessionGenerator = String Function();

class AuthenticatorService {
  @visibleForTesting
  static const int maxRetry = 2;

  Credential? _credential;
  Credential? get credential => _credential;

  // JWT? _jwt;
  // JWT? get jwt => _jwt;

  final AuthenticatorStorage _storage;
  AuthRepository? _authenticationRepository;

  final List<AuthenStateListener> _authStateListeners = mutableListOf();

  final List<Completer<Credential>> _pendingCompleter = mutableListOf();
  Future? _requestAuthentication;

  late Completer _initialCompletor;

  AskToRetryCredential? _askToRetryCredential;
  // this is for core application to call
  set askToRetryCredential(AskToRetryCredential askToRetryCredential) {
    _askToRetryCredential = askToRetryCredential;
  }

  UnAuthorizedCallback? _unAuthorizedCallback;
  set unAuthorizedCallback(UnAuthorizedCallback callback) {
    _unAuthorizedCallback = callback;
  }

  final SessionGenerator _sessionGenerator;

  String? _currentSession;

  String get currentSession {
    _currentSession ??= _sessionGenerator();
    return _currentSession!;
  }

  AuthenticatorService(
      {@visibleForTesting AuthenticatorStorage? storage,
      @visibleForTesting AuthRepository? authenticationRepository,
      @visibleForTesting SessionGenerator? sessionGenerator})
      : _storage = storage ?? AuthenticatorStorage(),
        _authenticationRepository = authenticationRepository,
        _sessionGenerator = sessionGenerator ?? sessionGen {
    _initialCompletor = Completer();
    _init();
  }

  static AuthenticatorService of(BuildContext context) => context.read();

  Future<void> waitForCompleteInitialize() {
    if (_initialCompletor.isCompleted) {
      return Future.value();
    }
    return _initialCompletor.future;
  }

  void registerAuthStateListener(AuthenStateListener listener) {
    if (!_authStateListeners.contains(listener)) {
      _authStateListeners.add(listener);
    }
  }

  void unRegisterAuthStateListener(AuthenStateListener listener) {
    _authStateListeners.remove(listener);
  }

  AuthenticatorApiInterceptor newAuthenticatorApiInterceptor({
    @visibleForTesting Duration durationBeforeExpired =
        AuthenticatorApiInterceptor.defaultDurationBeforeExpired,
  }) {
    return AuthenticatorApiInterceptor(
      authenticatorService: this,
      authenticationRequestor: _authenticationRequestor,
      unAuthorizedResponser: _unAuthorizedResponser,
      durationBeforeExpired: durationBeforeExpired,
    );
  }

  bool isLogin() =>
      _credential != null && (_credential!.authenType == AuthenType.authorized);

  void setCredential(Credential credential) {
    _setCredential(credential: credential);
  }

  void logout() {
    _setCredential(credential: null);
  }

  void _setCredential({
    Credential? credential,
    bool needSave = true,
    bool needNotify = true,
  }) {
    _credential = credential;
    if (_credential == null) {
      _regenerateSession();
    }
    if (needSave) {
      _storage.setCredential(credential);
    }
    if (needNotify) {
      _notifyListeners();
    }
  }

  void _notifyListeners() {
    for (var listener in _authStateListeners) {
      listener();
    }
  }

  void _init() async {
    await _storage.waitForCompleteInitialize();
    _authenticationRepository ??= Injector.instance<AuthRepository>();
    Credential? credential = await _storage.getCredential();
    _setCredential(
      credential: credential,
      needSave: false,
    );
    _initialCompletor.complete();
  }

  Future _unAuthorizedResponser({
    required String? session,
  }) async {
    String tmpSession = currentSession;
    if (session != null && session == tmpSession) {
      _setCredential(
        credential: null,
        needNotify: false,
      );
      await _unAuthorizedCallback?.call();
      _notifyListeners();
    }
  }

  Future<Credential> _authenticationRequestor(Credential? currentCredential) {
    Completer<Credential> completer = Completer();
    _pendingCompleter.add(completer);
    _requestAuthentication ??= _doRequestAuthentication(currentCredential);
    return completer.future;
  }

  Future _doRequestAuthentication(
    Credential? currentCredential,
  ) async {
    Credential? credential;
    int count = 1;
    bool needAskToRetry = true;
    while (credential == null && count <= maxRetry) {
      dynamic error;
      try {
        credential = await _requestCredential(currentCredential);
      } catch (e) {
        if (e is RefreshTokenExpiredException) {
          needAskToRetry = false;
          count = maxRetry;
        }
        error = e;
      }
      count++;
      if (credential == null && count > maxRetry && needAskToRetry) {
        bool retry = false;
        if (_askToRetryCredential != null) {
          retry = await _askToRetryCredential!(error);
        }
        if (retry) {
          count = 1;
        }
      }
    }

    _requestAuthentication = null;
    _updatePendingCompleter(
      credential: credential,
    );

    _setCredential(
      credential: credential,
      needNotify: false,
    );
    if (credential == null) {
      if (_unAuthorizedCallback != null) {
        await _unAuthorizedCallback!.call();
      }
    }
  }

  void _updatePendingCompleter({Credential? credential}) {
    List<Completer<Credential>> tmp = List.from(_pendingCompleter);
    _pendingCompleter.clear();
    for (Completer<Credential> completer in tmp) {
      if (!completer.isCompleted) {
        try {
          if (credential == null) {
            completer.completeError(UnAuthorizedException());
          } else {
            completer.complete(credential);
          }
        } catch (e) {
          //ignore
        }
      }
    }
  }

  Future<Credential> _requestCredential(Credential? credential) async {
    return Credential(
        authenType: AuthenType.authorized,
        accessToken: 'accessToken',
        refreshToken: 'refreshToken',
        expireAt: 10000);
    //todo
    // Token token;
    // if (credential == null) {
    //   try {
    //     token = await _authenticationRepository!.requestGuestToken();
    //     return _createCredentialFromToken(AuthenType.guest, token);
    //   } catch (e) {
    //     throw RequestGuestTokenException(error: e);
    //   }
    // } else {
    //   try {
    //     token = await _authenticationRepository!.refreshToken(
    //       accessToken: credential.accessToken,
    //       refreshToken: credential.refreshToken,
    //     );
    //     return _createCredentialFromToken(credential.authenType, token);
    //   } catch (e) {
    //     if (e is DioException) {
    //       if (e.isErrorUnauthorized()) {
    //         throw RefreshTokenExpiredException();
    //       }
    //     }
    //     throw RefreshTokenException(error: e);
    //   }
    // }
  }

  Credential _createCredentialFromToken(AuthenType authenType,
      String accessToken, String refreshToken, int expireIn) {
    return Credential(
      authenType: authenType,
      accessToken: accessToken,
      refreshToken: refreshToken,
      expireAt: DateTime.now().millisecondsSinceEpoch +
          Duration(seconds: expireIn).inMilliseconds,
    );
  }

  void _regenerateSession() {
    _currentSession = _sessionGenerator();
  }
}

enum AuthenType {
  @JsonValue("notAuthorized")
  notAuthorized,
  @JsonValue("authorized")
  authorized,
}

@visibleForTesting
String sessionGen() {
  String uuid = const Uuid().v8();
  Characters characters = uuid.characters;
  Random random = Random();
  StringBuffer buffer = StringBuffer();
  int length = 32;
  for (int i = 0; i < length; i++) {
    buffer.write(
      characters.elementAt(
        random.nextInt(characters.length),
      ),
    );
  }
  return buffer.toString();
}
