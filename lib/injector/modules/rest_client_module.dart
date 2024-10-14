import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:smm_seller_application/data/source/api/api_client.dart';
import 'package:smm_seller_application/data/source/api/auth_service.dart';
import 'package:smm_seller_application/data/source/api/otp_service.dart';

import 'package:smm_seller_application/data/source/api/seller_info_service.dart';
import 'package:smm_seller_application/injector/modules/dio_module.dart';

@module
abstract class RestClientModule {
  ApiClient getApiClient(@Named(dioPrivateInstanceName) Dio dio) =>
      ApiClient(dio);
  AuthService getAuthService(@Named(dioPublicInstanceName) Dio dio) =>
      AuthService(dio);
  SellerInfoService getSellerInfoService(
          @Named(dioPrivateInstanceName) Dio dio) =>
      SellerInfoService(dio);

  OtpService otpService(@Named(dioPublicInstanceName) Dio dio) =>
      OtpService(dio);
}
