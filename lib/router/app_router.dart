import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smm_seller_application/core/authenticator/authenticator_service.dart';
import 'package:smm_seller_application/core/route/shell_route_nav_bar.dart';
import 'package:smm_seller_application/features/forgot_password/view/forgot_password_page.dart';
import 'package:smm_seller_application/features/landing_page/landing_page.dart';
import 'package:smm_seller_application/features/login_page/view/login_page.dart';
import 'package:smm_seller_application/features/my_account/view/my_account_page.dart';
import 'package:smm_seller_application/features/register/view/register_page.dart';
import 'package:smm_seller_application/features/seller_setting/view/seller_setting_page.dart';
import 'package:smm_seller_application/features/set_new_password/view/set_new_password_page.dart';

class AppRouter {
  AppRouter({this.rootKey});
  final GlobalKey<NavigatorState>? rootKey;
  static const String appDirector = 'appDirector';
  static const String appDirectorPath = '/';

  static const String examplePageNamed = 'example';
  static const String examplePagePath = '/example';

  static const String registerPageNamed = 'register';
  static const String registerPagePath = '/register';

  static const String forgotPasswordPageNamed = 'forgot-password';
  static const String forgotPasswordPagePath = '/forgot-password';

  static const String loginPageNamed = 'login';
  static const String loginPagePath = '/login';

  static const String setNewPasswordNamed = 'setNewPassword';
  static const String setNewPasswordPath = '/setNewPassword';

  static const String sellerSettingPageNamed = 'seller-setting';
  static const String sellerSettingPagePath = '/seller-setting';

  static const String myAccountPageNamed = 'my-account';
  static const String myAccountPagePath = '/my-account';

  static GoRouter router() {
    return GoRouter(
      routes: [
        GoRoute(
          path: appDirectorPath,
          redirect: (context, state) async {
            AuthenticatorService authService = AuthenticatorService.of(context);
            await authService.waitForCompleteInitialize();
            final isLogin = authService.isLogin();
            final bool isRememberPassword =
                authService.getRememberPassword() ?? false;
            if (isLogin && isRememberPassword) {
              return AppRouter.sellerSettingPagePath;
            } else {
              return AppRouter.loginPagePath;
            }
          },
          pageBuilder: (context, state) {
            return MaterialPage<void>(
              key: state.pageKey,
              child: const LandingPage(),
            );
          },
        ),
        ShellRoute(
          pageBuilder:
              (BuildContext context, GoRouterState state, Widget child) {
            return NoTransitionPage(
              child: ShellRouteNavBar(
                currentRouteUri:
                    GoRouter.of(context).routeInformationProvider.value.uri,
                child: child,
              ),
            );
          },
          routes: <RouteBase>[
            GoRoute(
              path: myAccountPagePath,
              name: myAccountPageNamed,
              builder: (context, state) => const MyAccountPage(),
            ),
          ],
        ),
        GoRoute(
          path: loginPagePath,
          name: loginPageNamed,
          builder: (context, state) => const LoginPage(),
        ),
        GoRoute(
          path: registerPagePath,
          name: registerPageNamed,
          builder: (context, state) => const RegisterPage(),
        ),
        GoRoute(
          path: sellerSettingPagePath,
          name: sellerSettingPageNamed,
          builder: (context, state) => const SellerSettingPage(),
        ),
        GoRoute(
          path: forgotPasswordPagePath,
          name: forgotPasswordPageNamed,
          builder: (context, state) => const ForgotPasswordPage(),
        ),
        GoRoute(
          path: setNewPasswordPath,
          name: setNewPasswordNamed,
          builder: (context, state) {
            String? mobileNoOrEmail = state.extra as String?;
            return SetNewPasswordPage(
              mobile: mobileNoOrEmail ?? '',
            );
          },
        ),
      ],
    );
  }
}
