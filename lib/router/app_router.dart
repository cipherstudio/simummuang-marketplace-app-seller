import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smm_application/features/example_page/view/example_page.dart';
import 'package:smm_application/features/forgot_password/view/forgot_password_page.dart';
import 'package:smm_application/features/register/view/register_page.dart';

class AppRouter {
  AppRouter({this.rootKey});
  final GlobalKey<NavigatorState>? rootKey;
  static const String appDirector = 'appDirector';
  static const String appDirectorPath = '/';

  static const String examplePageNamed = 'example';
  static const String examplePagePath = '/example';

  static const String registerPageNamed = 'register';
  static const String registerPagePath = 'register';

  static const String forgotPasswordPageNamed = 'forgot-password';
  static const String forgotPasswordPagePath = 'forgot-password';

  static GoRouter router() {
    return GoRouter(
      routes: [
        GoRoute(
          path: appDirectorPath,
          pageBuilder: (context, state) {
            return MaterialPage<void>(
                key: state.pageKey, child: const ExamplePage());
          },
          routes: [
            GoRoute(
              path: registerPagePath,
              name: registerPageNamed,
              builder: (context, state) => const RegisterPage(),
            ),
            GoRoute(
              path: forgotPasswordPagePath,
              name: forgotPasswordPageNamed,
              builder: (context, state) => const ForgotPasswordPage(),
            )
          ],
        ),
      ],
    );
  }
}
