import 'package:injectable/injectable.dart';
import 'package:smm_application/data/repository/auth_repository_impl.dart';
import 'package:smm_application/data/repository/seller_info_repository_impl.dart';
import 'package:smm_application/data/source/api/auth_service.dart';
import 'package:smm_application/data/source/api/seller_info_service.dart';
import 'package:smm_application/domain/repository/auth_repository.dart';
import 'package:smm_application/domain/repository/seller_info_repository.dart';

@module
abstract class RepositoryModule {
  AuthRepository provideAuthRepository(
    AuthService authService,
  ) =>
      AuthRepositoryImpl(authService: authService);

  SellerInfoRepository provideSellerInfoRepository(
    SellerInfoService sellerInfoService,
  ) =>
      SellerInfoRepositoryImpl(sellerInfoService: sellerInfoService);
}
