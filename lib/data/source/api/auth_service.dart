import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:smm_seller_application/domain/data/models/login/login_email_request_model.dart';
import 'package:smm_seller_application/domain/data/models/login/login_email_response_model.dart';
import 'package:smm_seller_application/domain/data/models/login/login_mobile_request_model.dart';
import 'package:smm_seller_application/domain/data/models/login/login_mobile_response_model.dart';
import 'package:smm_seller_application/domain/data/models/login/login_request_model.dart';
import 'package:smm_seller_application/domain/data/models/login/mobile_login_password_response_model.dart';
import 'package:smm_seller_application/domain/data/models/reset_password/reset_password_response_model.dart';
import 'package:smm_seller_application/domain/data/models/reset_password/reset_password_request_model.dart';

part 'auth_service.g.dart';

@RestApi()
abstract class AuthService {
  // Constructor
  factory AuthService(Dio dio, {String baseUrl}) = _AuthService;

  @POST('/V1/smm/customer/mobileloginpassword')
  Future<MobileLoginPasswordResponseModel> login({
    @Body() required LoginRequestModel body,
  });

  @POST('/V1/smm/password/reset')
  Future<ResetPasswordResponseModel> resetPassword({
    @Body() required ResetPasswordRequestModel body,
  });

  @POST('/V1/smm/customer/mobilelogemail')
  Future<LoginEmailResponseModel> loginEmail({
    @Body() required LoginEmailRequestModel body,
  });

  @POST('/V1/smm/customer/mobilelogin')
  Future<LoginMobileResponseModel> loginMobile({
    @Body() required LoginMobileRequestModel body,
  });
}
