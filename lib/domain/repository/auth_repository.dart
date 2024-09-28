import 'package:smm_application/domain/data/models/login/login_request_model.dart';

abstract class AuthRepository {
  Future<String> login({
    required LoginRequestModel body,
  });
}
