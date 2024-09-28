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

import '../data/source/api/api_client.dart' as _i4;
import '../data/source/api/auth_service.dart' as _i5;
import '../domain/repository/auth_repository.dart' as _i6;
import '../features/login_page/bloc/login_bloc.dart' as _i7;
import 'modules/bloc_module.dart' as _i11;
import 'modules/dio_module.dart' as _i8;
import 'modules/repository_module.dart' as _i10;
import 'modules/rest_client_module.dart' as _i9;

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
      () => dioModule.dioInstance(),
      instanceName: 'dioInstance',
    );
    gh.factory<_i4.ApiClient>(() => restClientModule
        .getApiClient(gh<_i3.Dio>(instanceName: 'dioInstance')));
    gh.factory<_i5.AuthService>(() => restClientModule
        .getAuthService(gh<_i3.Dio>(instanceName: 'dioInstance')));
    gh.factory<_i6.AuthRepository>(
        () => repositoryModule.provideAuthRepository(gh<_i5.AuthService>()));
    gh.factory<_i7.LoginBloc>(
        () => blocPrivilegeModule.getLoginBloc(gh<_i6.AuthRepository>()));
    return this;
  }
}

class _$DioModule extends _i8.DioModule {}

class _$RestClientModule extends _i9.RestClientModule {}

class _$RepositoryModule extends _i10.RepositoryModule {}

class _$BlocPrivilegeModule extends _i11.BlocPrivilegeModule {}
