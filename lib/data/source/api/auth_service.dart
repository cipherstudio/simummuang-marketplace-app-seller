import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:smm_application/domain/data/models/login/login_request_model.dart';
import 'package:smm_application/domain/data/models/resetPassword/reset_password_request_model.dart';

part 'auth_service.g.dart';

@RestApi()
abstract class AuthService {
  // Constructor
  factory AuthService(Dio dio, {String baseUrl}) = _AuthService;

  @POST('/V1/integration/customer/token')
  Future<String> login({
    @Body() required LoginRequestModel body,
  });

  @POST('/V1/customers/resetPassword')
  Future<bool> resetPassword({
    @Body() required ResetPasswordRequestModel body,
  });
}
