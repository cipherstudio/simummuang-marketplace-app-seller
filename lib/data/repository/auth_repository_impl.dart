import 'package:smm_application/data/source/api/auth_service.dart';
import 'package:smm_application/domain/data/models/login/login_request_model.dart';
import 'package:smm_application/domain/data/models/resetPassword/reset_password_request_model.dart';
import 'package:smm_application/domain/repository/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  late final AuthService _authService;

  AuthRepositoryImpl({
    required AuthService authService,
  }) : _authService = authService;

  @override
  Future<String> login({required LoginRequestModel body}) async {
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
  Future<bool> resetPassword({required ResetPasswordRequestModel body}) async {
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
}
