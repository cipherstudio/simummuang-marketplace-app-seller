import 'package:smm_application/domain/data/models/login/login_request_model.dart';

abstract class AuthRepository {
  Future<dynamic> login({
    required LoginRequestModel body,
  });
}
