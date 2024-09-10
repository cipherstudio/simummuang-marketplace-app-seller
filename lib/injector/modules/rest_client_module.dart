import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:smm_application/data/source/api/api_client.dart';
import 'package:smm_application/injector/modules/dio_module.dart';

@module
abstract class RestClientModule {
  ApiClient getApiClient(@Named(dioInstanceName) Dio dio) => ApiClient(dio);
}
