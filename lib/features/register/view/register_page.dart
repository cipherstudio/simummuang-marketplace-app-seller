import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smm_components/components/shared_components.dart';
import 'package:smm_seller_application/features/register/bloc/register_bloc.dart';
import 'package:smm_seller_application/features/register/view/component/register_confirm_consent.dart';
import 'package:smm_seller_application/features/register/view/component/register_information_form.dart';

import 'package:smm_seller_application/translation/generated/l10n.dart';
import 'package:smm_components/themes/app_colors.dart';
import 'package:smm_components/themes/app_text_styles.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterBloc(),
      child: BlocBuilder<RegisterBloc, RegisterBlocState>(
          builder: (context, state) => _body(context, state)),
    );
  }

  Widget _body(BuildContext context, RegisterBlocState state) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: SMMAppBar.loginAndRegister(),
      body: SafeArea(
        child: SingleChildScrollView(
          controller: context.read<RegisterBloc>().scrollController,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  Trans.current.register_title,
                  style: AppTextStyles.displaySMSemibold
                      .copyWith(color: AppColors.primaryDefaultMain),
                ),
                const SizedBox(
                  height: 24,
                ),
                if (state.registerPageState ==
                    RegisterPageState.informationForm)
                  const RegisterInformationForm(),
                if (state.registerPageState == RegisterPageState.confirmConsent)
                  const RegisterConfirmConsent()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
