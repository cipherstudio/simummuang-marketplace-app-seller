import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';
import 'package:smm_application/data/source/api/rest_api_client.dart';

const String dioInstanceName = 'dioInstance';

@module
abstract class DioModule {
  @singleton
  @Named(dioInstanceName)
  Dio dioInstance() => RestAPIClient.dioInstance;
}
