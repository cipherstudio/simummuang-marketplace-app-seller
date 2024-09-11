import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

class Injector {
  Injector._();
  static final instance = GetIt.asNewInstance();
}

@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: true, // default
  asExtension: true, // default
)
void configureDependencies() {}
