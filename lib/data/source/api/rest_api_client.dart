import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:smm_application/core/authenticator/authenticator_service.dart';
import 'package:smm_application/core/interceptor/app_default_interceptor.dart';
import 'package:smm_application/core/keys/app_keys.dart';
import 'package:smm_application/injector/app_injector.dart';

class RestAPIClient {
  static Dio? _dioInstance;

  static Dio get dioInstance =>
      _dioInstance ??= _createPrivate(Injector.instance(), Injector.instance());

  static Dio _createPrivate(
    AuthenticatorService authenticatorService,
    AppDefaultHeaderInterceptor appDefaultHeaderInterceptor,
  ) {
    final Dio dio = Dio(
      BaseOptions(
        baseUrl: AppKeys.baseUrl,
      ),
    );

    dio.interceptors.addAll([
      ApiInterceptor(),
      authenticatorService.newAuthenticatorApiInterceptor(),
      appDefaultHeaderInterceptor,
    ]);
    if (!kReleaseMode) {
      dio.interceptors.add(
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseHeader: true,
          request: true,
        ),
      );
    }
    return dio;
  }
}

class ApiInterceptor extends Interceptor {
  ApiInterceptor();

  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    handler.next(err);
  }
}
