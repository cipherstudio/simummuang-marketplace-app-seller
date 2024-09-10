import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class RestAPIClient {
  static Dio? _dioInstance;

  static Dio get dioInstance => _dioInstance ??= _createPrivate();

  static Dio _createPrivate() {
    final Dio dio = Dio(
      BaseOptions(
        baseUrl: 'todo',
      ),
    );

    dio.interceptors.addAll([
      ApiInterceptor(),
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
      RequestOptions options, RequestInterceptorHandler handler) async {}

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {}
}
