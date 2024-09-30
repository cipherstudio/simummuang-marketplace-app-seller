// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../data/source/api/api_client.dart' as _i5;
import '../data/source/api/auth_service.dart' as _i4;
import '../data/source/api/seller_info_service.dart' as _i6;
import '../domain/repository/auth_repository.dart' as _i7;
import '../domain/repository/otp_repository.dart' as _i8;
import '../domain/repository/seller_info_repository.dart' as _i9;
import '../features/forgot_password/bloc/forgot_password_bloc.dart' as _i12;
import '../features/login_page/bloc/login_bloc.dart' as _i10;
import '../features/seller_setting/bloc/seller_setting_bloc.dart' as _i13;
import '../features/set_new_password/bloc/set_new_password_bloc.dart' as _i11;
import 'modules/bloc_module.dart' as _i17;
import 'modules/dio_module.dart' as _i14;
import 'modules/repository_module.dart' as _i16;
import 'modules/rest_client_module.dart' as _i15;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final dioModule = _$DioModule();
    final restClientModule = _$RestClientModule();
    final repositoryModule = _$RepositoryModule();
    final blocPrivilegeModule = _$BlocPrivilegeModule();
    gh.singleton<_i3.Dio>(
      () => dioModule.dioPublicInstance(),
      instanceName: 'dioPublicInstance',
    );
    gh.singleton<_i3.Dio>(
      () => dioModule.dioPrivateInstance(),
      instanceName: 'dioPrivateInstance',
    );
    gh.factory<_i4.AuthService>(() => restClientModule
        .getAuthService(gh<_i3.Dio>(instanceName: 'dioPublicInstance')));
    gh.factory<_i5.ApiClient>(() => restClientModule
        .getApiClient(gh<_i3.Dio>(instanceName: 'dioPrivateInstance')));
    gh.factory<_i6.SellerInfoService>(() => restClientModule
        .getSellerInfoService(gh<_i3.Dio>(instanceName: 'dioPrivateInstance')));
    gh.factory<_i7.AuthRepository>(
        () => repositoryModule.provideAuthRepository(gh<_i4.AuthService>()));
    gh.factory<_i8.OtpRepository>(
        () => repositoryModule.provideOtpRepository(gh<_i5.ApiClient>()));
    gh.factory<_i9.SellerInfoRepository>(() => repositoryModule
        .provideSellerInfoRepository(gh<_i6.SellerInfoService>()));
    gh.factory<_i10.LoginBloc>(
        () => blocPrivilegeModule.getLoginBloc(gh<_i7.AuthRepository>()));
    gh.factory<_i11.SetNewPasswordBloc>(() =>
        blocPrivilegeModule.getSetNewPasswordBloc(gh<_i7.AuthRepository>()));
    gh.factory<_i12.ForgotPasswordBloc>(() =>
        blocPrivilegeModule.getForgotPasswordBloc(gh<_i8.OtpRepository>()));
    gh.factory<_i13.SellerSettingBloc>(() => blocPrivilegeModule
        .getSellerSettingBloc(gh<_i9.SellerInfoRepository>()));
    return this;
  }
}

class _$DioModule extends _i14.DioModule {}

class _$RestClientModule extends _i15.RestClientModule {}

class _$RepositoryModule extends _i16.RepositoryModule {}

class _$BlocPrivilegeModule extends _i17.BlocPrivilegeModule {}
