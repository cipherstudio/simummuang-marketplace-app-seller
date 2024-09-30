import 'package:injectable/injectable.dart';
import 'package:smm_application/data/repository/auth_repository_impl.dart';
import 'package:smm_application/data/repository/otp_repository_impl.dart';
import 'package:smm_application/data/source/api/api_client.dart';
import 'package:smm_application/data/repository/seller_info_repository_impl.dart';
import 'package:smm_application/data/source/api/auth_service.dart';
import 'package:smm_application/data/source/api/seller_info_service.dart';
import 'package:smm_application/domain/repository/auth_repository.dart';
import 'package:smm_application/domain/repository/otp_repository.dart';
import 'package:smm_application/domain/repository/seller_info_repository.dart';

@module
abstract class RepositoryModule {
  AuthRepository provideAuthRepository(
    AuthService authService,
  ) =>
      AuthRepositoryImpl(authService: authService);

  OtpRepository provideOtpRepository(ApiClient apiClient) =>
      OtpRepositoryImpl(apiClient: apiClient);
  SellerInfoRepository provideSellerInfoRepository(
    SellerInfoService sellerInfoService,
  ) =>
      SellerInfoRepositoryImpl(sellerInfoService: sellerInfoService);
}
