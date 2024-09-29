import 'package:smm_application/domain/data/models/login/login_request_model.dart';
import 'package:smm_application/domain/data/models/reset_password/reset_password_request_model.dart';

abstract class AuthRepository {
  Future<String> login({
    required LoginRequestModel body,
  });

  Future<bool> resetPassword({
    required ResetPasswordRequestModel body,
  });
}
