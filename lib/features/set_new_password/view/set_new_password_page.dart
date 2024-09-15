import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:smm_application/components/shared_components.dart';
import 'package:smm_application/features/set_new_password/bloc/set_new_password_bloc.dart';
import 'package:smm_application/router/app_router.dart';
import 'package:smm_application/themes/app_colors.dart';
import 'package:smm_application/themes/app_text_styles.dart';
import 'package:smm_application/translation/generated/l10n.dart';

class SetNewPasswordPage extends StatefulWidget {
  const SetNewPasswordPage({super.key});

  @override
  State<SetNewPasswordPage> createState() => _SetNewPasswordPageState();
}

class _SetNewPasswordPageState extends State<SetNewPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SetNewPasswordBloc()
        ..add(
          const SetNewPasswordBlocEvent.initialize(),
        ),
      child: BlocBuilder<SetNewPasswordBloc, SetNewPasswordBlocState>(
        builder: (BuildContext context, SetNewPasswordBlocState state) {
          return state.status.whenOrNull(
                loadSuccess: (message) => _displayUI(context),
              ) ??
              const SizedBox.shrink();
        },
      ),
    );
  }

  Widget _displayUI(BuildContext context) {
    return Scaffold(
      appBar: SMMAppBar.loginAndRegister(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 27, horizontal: 16),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Center(
                      child: Text(
                    Trans.current.set_new_password_main_title,
                    style: AppTextStyles.displaySMSemibold,
                  )),
                ),
                const SizedBox(
                  height: 24,
                ),
                SMMTextLabel.textField(
                  text: Trans.current.set_new_password_first_text_label,
                  isStar: true,
                  child: SMMTextFormField.obscure(
                    isEnable: true,
                    hintText: Trans
                        .current.set_new_password_first_text_form_field_hint,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                SMMTextLabel.textField(
                  text: Trans.current.set_new_password_second_text_label,
                  isStar: true,
                  child: SMMTextFormField.obscure(
                    isEnable: true,
                    hintText: Trans
                        .current.set_new_password_second_text_form_field_hint,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24),
                  child: SMMFilledButton.normal(
                    width: double.infinity,
                    label: Trans.current.set_new_password_button_label,
                    onPressed: () {},
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      Trans.current.set_new_password_not_have_account_label,
                      style: AppTextStyles.textSMRegular,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    InkWell(
                      child: Text(
                        Trans.current.set_new_password_create_new_account_label,
                        style: AppTextStyles.textSMSemiBold.copyWith(
                          color: AppColors.primaryBrandMain,
                        ),
                      ),
                      onTap: () {
                        context.pushNamed(AppRouter.registerPageNamed);
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
