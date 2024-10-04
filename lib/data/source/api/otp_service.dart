// ignore_for_file: public_member_api_docs

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:smm_seller_application/domain/data/models/otp/request_otp_request_body_model.dart';
import 'package:smm_seller_application/domain/data/models/otp/request_otp_response_model.dart';
import 'package:smm_seller_application/domain/data/models/otp/verify_otp_request_body_model.dart';
import 'package:smm_seller_application/domain/data/models/otp/verify_otp_response_model.dart';

part 'otp_service.g.dart';

//
@RestApi()

///to mock data add field key isMock boolean type and add field key file to open json file mock data response in Extra option to toggle use mock data
abstract class OtpService {
  // Constructor
  factory OtpService(Dio dio, {String baseUrl}) = _OtpService;

  @POST('/V1/smm/otp/request')
  Future<RequestOtpResponseModel> requestOTP({
    @Body() required RequestOtpRequestBody body,
  });

  @POST('/V1/smm/otp/verify')
  Future<VerifyOtpResponseModel> verifyOTP({
    @Body() required VerifyOtpRequestBodyModel body,
  });
}
