import 'package:smm_application/data/source/api/api_client.dart';
import 'package:smm_application/data/source/api/otp_service.dart';
import 'package:smm_application/domain/data/models/otp/request_otp_request_body_model.dart';
import 'package:smm_application/domain/data/models/otp/request_otp_response_model.dart';
import 'package:smm_application/domain/data/models/otp/verify_otp_request_body_model.dart';
import 'package:smm_application/domain/data/models/otp/verify_otp_response_model.dart';
import 'package:smm_application/domain/repository/otp_repository.dart';

class OtpRepositoryImpl implements OtpRepository {
  late final OtpService _apiClient;

  OtpRepositoryImpl({
    required OtpService apiClient,
  }) : _apiClient = apiClient;

  @override
  Future<RequestOtpResponseModel> requestOtp(
      {required RequestOtpRequestBody requestBody}) async {
    try {
      return await _apiClient
          .requestOTP(
            body: requestBody,
          )
          .then((value) => value);
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<VerifyOtpResponseModel> verifyOtp(
      {required VerifyOtpRequestBodyModel requestBody}) async {
    try {
      return await _apiClient
          .verifyOTP(
            body: requestBody,
          )
          .then((value) => value);
    } catch (_) {
      rethrow;
    }
  }
}
