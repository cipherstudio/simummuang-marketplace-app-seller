import 'package:smm_seller_application/data/source/api/auth_service.dart';
import 'package:smm_seller_application/domain/data/models/login/login_email_request_model.dart';
import 'package:smm_seller_application/domain/data/models/login/login_email_response_model.dart';
import 'package:smm_seller_application/domain/data/models/login/login_mobile_request_model.dart';
import 'package:smm_seller_application/domain/data/models/login/login_mobile_response_model.dart';
import 'package:smm_seller_application/domain/data/models/login/login_request_model.dart';
import 'package:smm_seller_application/domain/data/models/login/mobile_login_password_response_model.dart';
import 'package:smm_seller_application/domain/data/models/reset_password/reset_password_request_model.dart';
import 'package:smm_seller_application/domain/data/models/reset_password/reset_password_response_model.dart';
import 'package:smm_seller_application/domain/repository/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  late final AuthService _authService;

  AuthRepositoryImpl({
    required AuthService authService,
  }) : _authService = authService;

  @override
  Future<MobileLoginPasswordResponseModel> login(
      {required LoginRequestModel body}) async {
    try {
      return await _authService
          .login(
            body: body,
          )
          .then((value) => value);
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<ResetPasswordResponseModel> resetPassword(
      {required ResetPasswordRequestModel body}) async {
    try {
      return await _authService
          .resetPassword(
            body: body,
          )
          .then((value) => value);
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<LoginEmailResponseModel> loginEmail({
    required LoginEmailRequestModel body,
  }) async {
    try {
      return await _authService
          .loginEmail(
        body: body,
      )
          .then((value) {
        return value;
      });
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<LoginMobileResponseModel> loginMobile({
    required LoginMobileRequestModel body,
  }) async {
    try {
      return await _authService
          .loginMobile(
        body: body,
      )
          .then((value) {
        return value;
      });
    } catch (_) {
      rethrow;
    }
  }
}
