import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:smm_application/components/shared_components.dart';
import 'package:smm_application/features/forgot_password/bloc/forgot_password_bloc.dart';
import 'package:smm_application/features/forgot_password/view/component/request_otp.dart';
import 'package:smm_application/features/forgot_password/view/component/verify_otp.dart';
import 'package:smm_application/features/set_new_password/view/set_new_password_page.dart';
import 'package:smm_application/router/app_router.dart';
import 'package:smm_application/themes/app_colors.dart';
import 'package:smm_application/themes/app_text_styles.dart';
import 'package:smm_application/translation/generated/l10n.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ForgotPasswordBloc(),
      child: BlocConsumer<ForgotPasswordBloc, ForgotPasswordBlocState>(
          listener: (context, state) {
            if (state.verifySendedOTPSuccess == true) {
              context.pushNamed(AppRouter.setNewPasswordNamed);
            } else if (state.verifySendedOTPSuccess == false) {
              showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title: const Text('Warning.'),
                  content: const Text('Verify OTP not success.'),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'Cancel'),
                      child: const Text('Cancel'),
                    ),
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'OK'),
                      child: const Text('OK'),
                    ),
                  ],
                ),
              );
            }
          },
          builder: (context, state) => _body(context, state)),
    );
  }

  Widget _body(BuildContext context, ForgotPasswordBlocState state) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: SMMAppBar.loginAndRegister(),
      body: SafeArea(
        child: SingleChildScrollView(
          controller: context.read<ForgotPasswordBloc>().scrollController,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  Trans.current.forgetpassword_title,
                  style: AppTextStyles.displaySMSemibold
                      .copyWith(color: AppColors.primaryDefaultMain),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  Trans.current.forgetpassword_subtitle,
                  style: AppTextStyles.textMDRegular
                      .copyWith(color: AppColors.primaryDefaultMain),
                ),
                const SizedBox(
                  height: 24,
                ),
                if (state.forgotPasswordPageState ==
                    ForgotPasswordPageState.reqOTP)
                  const RequestOTP(),
                if (state.forgotPasswordPageState ==
                    ForgotPasswordPageState.verifyOTP)
                  const VerifyOTP()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
