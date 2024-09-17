import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smm_application/features/example_page/view/example_page.dart';
import 'package:smm_application/features/forgot_password/view/forgot_password_page.dart';
import 'package:smm_application/features/login_page/view/login_page.dart';
import 'package:smm_application/features/register/view/register_page.dart';
import 'package:smm_application/features/set_new_password/view/set_new_password_page.dart';

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

  static const String loginPageNamed = 'login';
  static const String loginPagePath = 'login';

  static const String setNewPasswordNamed = 'setNewPassword';
  static const String setNewPasswordPath = 'setNewPassword';

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
            ),
            GoRoute(
              path: loginPagePath,
              name: loginPageNamed,
              builder: (context, state) => const LoginPage(),
            ),
            GoRoute(
              path: setNewPasswordPath,
              name: setNewPasswordNamed,
              builder: (context, state) => const SetNewPasswordPage(),
            )
          ],
        ),
      ],
    );
  }
}
