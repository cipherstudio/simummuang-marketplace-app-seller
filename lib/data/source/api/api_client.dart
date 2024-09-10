// ignore_for_file: public_member_api_docs

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'api_client.g.dart';

//
@RestApi()

///to mock data add field key isMock boolean type and add field key file to open json file mock data response in Extra option to toggle use mock data
abstract class ApiClient {
  // Constructor
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;
}
