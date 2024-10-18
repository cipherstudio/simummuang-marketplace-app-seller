import 'package:smm_seller_application/domain/data/models/login/login_email_request_model.dart';
import 'package:smm_seller_application/domain/data/models/login/login_email_response_model.dart';
import 'package:smm_seller_application/domain/data/models/login/login_mobile_request_model.dart';
import 'package:smm_seller_application/domain/data/models/login/login_mobile_response_model.dart';
import 'package:smm_seller_application/domain/data/models/login/login_request_model.dart';
import 'package:smm_seller_application/domain/data/models/login/mobile_login_password_response_model.dart';
import 'package:smm_seller_application/domain/data/models/reset_password/reset_password_request_model.dart';
import 'package:smm_seller_application/domain/data/models/reset_password/reset_password_response_model.dart';

abstract class AuthRepository {
  Future<MobileLoginPasswordResponseModel> login({
    required LoginRequestModel body,
  });

  Future<ResetPasswordResponseModel> resetPassword({
    required ResetPasswordRequestModel body,
  });

  Future<LoginEmailResponseModel> loginEmail({
    required LoginEmailRequestModel body,
  });

  Future<LoginMobileResponseModel> loginMobile({
    required LoginMobileRequestModel body,
  });
}
