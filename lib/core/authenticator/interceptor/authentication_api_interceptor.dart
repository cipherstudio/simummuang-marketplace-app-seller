import 'package:dio/dio.dart';
import 'package:smm_seller_application/core/authenticator/auth_exception.dart';
import 'package:smm_seller_application/core/authenticator/authenticator_service.dart';
import 'package:smm_seller_application/core/authenticator/credential.dart';
import 'package:smm_seller_application/core/keys/app_keys.dart';
import 'package:smm_seller_application/extensions/dio_extension.dart';

typedef AuthenticationRequestor = Future<Credential> Function(
  Credential? currentCredential,
);

typedef UnAuthorizedResponser = Future Function({required String? session});

class AuthenticatorApiInterceptor extends Interceptor {
  static const defaultDurationBeforeExpired = Duration(minutes: 5);

  final AuthenticatorService _authenticatorService;
  final AuthenticationRequestor _authenticationRequestor;
  final UnAuthorizedResponser _unAuthorizedResponser;
  final Duration _durationBeforeExpired;

  AuthenticatorApiInterceptor({
    required AuthenticatorService authenticatorService,
    required AuthenticationRequestor authenticationRequestor,
    required UnAuthorizedResponser unAuthorizedResponser,
    Duration durationBeforeExpired = defaultDurationBeforeExpired,
  })  : _authenticatorService = authenticatorService,
        _authenticationRequestor = authenticationRequestor,
        _unAuthorizedResponser = unAuthorizedResponser,
        _durationBeforeExpired = durationBeforeExpired;

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    if (!options.isIgnoreAuthorized()) {
      Credential? credential = _authenticatorService.credential;
      int compareTime = DateTime.now().millisecondsSinceEpoch +
          _durationBeforeExpired.inMilliseconds;
      if (credential == null ||
          credential.isExpired(compareTime: compareTime)) {
        try {
          credential = await _authenticationRequestor(credential);
        } catch (e) {
          handler.reject(DioException(requestOptions: options, error: e));
          return;
        }
      }
      options.authorization = credential.accessToken;
    }
    options.session = _authenticatorService.currentSession;
    handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    RequestOptions options = err.requestOptions;
    if (!options.isIgnoreAuthorized()) {
      if (err.isErrorUnauthorized()) {
        await _unAuthorizedResponser(session: options.session);
        handler.reject(
          DioException(
            requestOptions: options,
            error: UnAuthorizedException(),
          ),
        );
        return;
      }
    }
    super.onError(err, handler);
  }
}

extension RequestOptionsExt on RequestOptions {
  bool isIgnoreAuthorized() {
    return extra[AppKeys.ignoreAuthorized] ?? false;
  }

  set authorization(String token) {
    headers['Authorization'] = 'Bearer $token';
  }

  set session(String? session) {
    headers['sessionId'] = session;
  }

  String? get session {
    return headers['sessionId'];
  }
}
