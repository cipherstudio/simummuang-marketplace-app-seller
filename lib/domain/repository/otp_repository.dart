import 'package:smm_application/domain/data/models/otp/request_otp_request_body_model.dart';
import 'package:smm_application/domain/data/models/otp/request_otp_response_model.dart';
import 'package:smm_application/domain/data/models/otp/verify_otp_request_body_model.dart';
import 'package:smm_application/domain/data/models/otp/verify_otp_response_model.dart';

abstract class OtpRepository {
  Future<RequestOtpResponseModel> requestOtp({
    required RequestOtpRequestBody requestBody,
  });

  Future<VerifyOtpResponseModel> verifyOtp({
    required VerifyOtpRequestBodyModel requestBody,
  });
}
