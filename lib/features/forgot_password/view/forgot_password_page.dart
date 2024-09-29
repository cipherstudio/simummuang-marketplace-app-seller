import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:smm_application/components/shared_components.dart';
import 'package:smm_application/features/forgot_password/bloc/forgot_password_bloc.dart';
import 'package:smm_application/features/forgot_password/view/component/request_otp.dart';
import 'package:smm_application/features/forgot_password/view/component/verify_otp.dart';
import 'package:smm_application/injector/app_injector.dart';
import 'package:smm_application/router/app_router.dart';
import 'package:smm_application/themes/app_colors.dart';
import 'package:smm_application/themes/app_text_styles.dart';
import 'package:smm_application/translation/generated/l10n.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Injector.instance<ForgotPasswordBloc>()
        ..add(const ForgotPasswordBlocEvent.init()),
      child: MultiBlocListener(
        listeners: [
          BlocListener<ForgotPasswordBloc, ForgotPasswordBlocState>(
            listenWhen: (previous, current) =>
                current.requestOtpUiStatus != previous.requestOtpUiStatus,
            listener: (context, state) {
              state.requestOtpUiStatus.whenOrNull(
                loading: () {
                  CoolAlert.show(
                    context: context,
                    type: CoolAlertType.loading,
                  );
                },
                loadFailed: (message, error) {
                  Navigator.pop(context, 1);
                  CoolAlert.show(
                    context: context,
                    type: CoolAlertType.error,
                    title: 'Oops...',
                    text: 'Sorry, something went wrong',
                    loopAnimation: false,
                  );
                },
                loadSuccess: (message) {
                  Navigator.pop(context, 1);
                },
              );
            },
          ),
          BlocListener<ForgotPasswordBloc, ForgotPasswordBlocState>(
            listenWhen: (previous, current) =>
                current.verifySendedOTPStatus != previous.verifySendedOTPStatus,
            listener: (BuildContext context, ForgotPasswordBlocState state) {
              state.verifySendedOTPStatus.whenOrNull(
                loading: () {
                  CoolAlert.show(
                    context: context,
                    type: CoolAlertType.loading,
                  );
                },
                loadFailed: (message, error) {
                  Navigator.pop(context, 1);
                  CoolAlert.show(
                    context: context,
                    type: CoolAlertType.error,
                    title: 'Oops...',
                    text: 'Sorry, something went wrong',
                    loopAnimation: false,
                  );
                },
                loadSuccess: (message) {
                  Navigator.pop(context, 1);
                  context.pushNamed(AppRouter.setNewPasswordNamed);
                },
              );
            },
          ),
        ],
        child: BlocBuilder<ForgotPasswordBloc, ForgotPasswordBlocState>(
          builder: (BuildContext context, ForgotPasswordBlocState state) =>
              _body(context, state),
        ),
      ),
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
