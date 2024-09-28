// ignore_for_file: public_member_api_docs

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:smm_application/domain/data/models/login/login_request_model.dart';

part 'auth_service.g.dart';

@RestApi()
abstract class AuthService {
  // Constructor
  factory AuthService(Dio dio, {String baseUrl}) = _AuthService;

  @POST('/rest/all/V1/integration/customer/token')
  Future<String> login({
    @Body() required LoginRequestModel body,
  });
}
