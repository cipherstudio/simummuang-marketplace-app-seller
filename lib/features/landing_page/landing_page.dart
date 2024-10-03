import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smm_components/components/shared_components.dart';
import 'package:smm_application/core/authenticator/authenticator_service.dart';

import 'package:smm_application/router/app_router.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      AuthenticatorService authService = AuthenticatorService.of(context);
      await authService.waitForCompleteInitialize();
      final isLogin = authService.isLogin();
      final bool isRememberPassword =
          authService.getRememberPassword() ?? false;
      if (isLogin && isRememberPassword) {
        context.pushNamed(AppRouter.sellerSettingPageNamed);
      } else {
        context.pushNamed(AppRouter.loginPageNamed);
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: Center(child: CircularProgressIndicator())),
    );
  }
}
