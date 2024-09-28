import 'package:dio/dio.dart';

class AppDefaultHeaderInterceptor extends InterceptorsWrapper {
  AppDefaultHeaderInterceptor();

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    Map<String, dynamic> newHeaders = {
      ...options.headers,
    };
    options.headers = newHeaders;
    super.onRequest(options, handler);
  }
}
