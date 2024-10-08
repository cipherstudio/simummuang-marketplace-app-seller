import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:smm_seller_application/core/authenticator/authenticator_service.dart';
import 'package:smm_seller_application/core/interceptor/app_default_interceptor.dart';
import 'package:smm_seller_application/injector/app_injector.dart';
import 'package:smm_seller_application/router/app_router.dart';
import 'package:smm_seller_application/translation/generated/l10n.dart';
import 'package:provider/provider.dart';
import 'package:smm_components/themes/app_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  final AuthenticatorService authenticatorService = AuthenticatorService();
  configureDependencies(
      authenticatorService: authenticatorService,
      appDefaultHeaderInterceptor: AppDefaultHeaderInterceptor());

  runApp(MyApp(
    authenticatorService: authenticatorService,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.authenticatorService});
  final AuthenticatorService authenticatorService;
  Provider<AuthenticatorService> _createAuthenticatorServiceProvider() =>
      Provider.value(value: authenticatorService);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [_createAuthenticatorServiceProvider()],
      child: MaterialApp.router(
        title: 'SMM-APP',
        scrollBehavior: const MaterialScrollBehavior().copyWith(
          dragDevices: {
            PointerDeviceKind.mouse,
            PointerDeviceKind.touch,
            PointerDeviceKind.stylus,
            PointerDeviceKind.unknown,
          },
        ),
        supportedLocales: const [Locale('th'), Locale('en')],
        locale: const Locale('th'),
        localizationsDelegates: const [
          Trans.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          DefaultCupertinoLocalizations.delegate,
        ],
        themeMode: ThemeMode.light,
        theme: AppTheme.mainTheme,
        builder: (context, child) {
          return ResponsiveBreakpoints.builder(
            child: GestureDetector(
              onTap: () {
                FocusManager.instance.primaryFocus?.unfocus();
              },
              child: Builder(
                builder: (context) => MaxWidthBox(
                  maxWidth: 900,
                  child: ResponsiveScaledBox(
                    width: ResponsiveValue<double>(context, conditionalValues: [
                      Condition.equals(name: MOBILE, value: 390),
                      Condition.equals(name: TABLET, value: 780),
                    ]).value,
                    child: child!,
                  ),
                ),
              ),
            ),
            breakpoints: [
              const Breakpoint(start: 0, end: 480, name: MOBILE),
              const Breakpoint(start: 600, end: 900, name: TABLET),
            ],
          );
        },
        routerConfig: AppRouter.router(),
      ),
    );
  }
}
