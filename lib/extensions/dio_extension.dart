import 'package:dio/dio.dart';

extension DioExceptionExt on DioException {
  bool isErrorUnauthorized() {
    return response?.statusCode == 401;
  }
}
