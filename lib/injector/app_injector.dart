import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:smm_application/core/authenticator/authenticator_service.dart';
import 'package:smm_application/core/interceptor/app_default_interceptor.dart';
import 'package:smm_application/injector/app_injector.config.dart';

abstract class Injector {
  Injector._();
  static final instance = GetIt.asNewInstance();
}

@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: true, // default
  asExtension: true, // default
)
void configureDependencies({
  required AuthenticatorService authenticatorService,
  required AppDefaultHeaderInterceptor appDefaultHeaderInterceptor,
}) {
  Injector.instance.registerSingleton(authenticatorService);
  Injector.instance.registerSingleton(appDefaultHeaderInterceptor);
  Injector.instance.init();
}
