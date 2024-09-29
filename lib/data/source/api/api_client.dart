// ignore_for_file: public_member_api_docs

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:smm_application/domain/data/models/otp/request_otp_request_body_model.dart';
import 'package:smm_application/domain/data/models/otp/request_otp_response_model.dart';
import 'package:smm_application/domain/data/models/otp/verify_otp_request_body_model.dart';
import 'package:smm_application/domain/data/models/otp/verify_otp_response_model.dart';

part 'api_client.g.dart';

//
@RestApi()

///to mock data add field key isMock boolean type and add field key file to open json file mock data response in Extra option to toggle use mock data
abstract class ApiClient {
  // Constructor
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @POST('/rest/all/V1/smm/otp/request')
  Future<RequestOtpResponseModel> requestOTP({
    @Body() required RequestOtpRequestBody body,
  });

  @POST('/rest/all/V1/smm/otp/verify')
  Future<VerifyOtpResponseModel> verifyOTP({
    @Body() required VerifyOtpRequestBodyModel body,
  });
}
