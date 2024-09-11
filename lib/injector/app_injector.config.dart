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
import 'modules/dio_module.dart' as _i5;
import 'modules/rest_client_module.dart' as _i6;

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
    gh.singleton<_i3.Dio>(
      () => dioModule.dioInstance(),
      instanceName: 'dioInstance',
    );
    gh.factory<_i4.ApiClient>(() => restClientModule
        .getApiClient(gh<_i3.Dio>(instanceName: 'dioInstance')));
    return this;
  }
}

class _$DioModule extends _i5.DioModule {}

class _$RestClientModule extends _i6.RestClientModule {}
