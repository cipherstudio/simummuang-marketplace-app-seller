import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';
import 'package:smm_seller_application/data/source/api/rest_api_client.dart';

const String dioPrivateInstanceName = 'dioPrivateInstance';
const String dioPublicInstanceName = 'dioPublicInstance';

@module
abstract class DioModule {
  @singleton
  @Named(dioPublicInstanceName)
  Dio dioPublicInstance() => RestAPIClient.dioPublicInstance;
  @singleton
  @Named(dioPrivateInstanceName)
  Dio dioPrivateInstance() => RestAPIClient.dioPrivateInstance;
}
