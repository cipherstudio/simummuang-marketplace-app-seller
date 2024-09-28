import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:smm_application/injector/app_injector.config.dart';
import 'package:smm_application/injector/app_injector.dart';
import 'package:smm_application/router/app_router.dart';
import 'package:smm_application/themes/app_theme.dart';
import 'package:smm_application/translation/generated/l10n.dart';

void main() {
  Injector.instance.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
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
    );
  }
}
