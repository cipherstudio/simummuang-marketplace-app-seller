import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:smm_components/components/shared_components.dart';
import 'package:smm_application/features/register/bloc/register_bloc.dart';
import 'package:smm_application/generated/assets.gen.dart';
import 'package:smm_application/router/app_router.dart';

import 'package:smm_application/translation/generated/l10n.dart';
import 'package:smm_components/themes/app_colors.dart';
import 'package:smm_components/themes/app_text_styles.dart';

class RegisterInformationForm extends StatelessWidget {
  const RegisterInformationForm({super.key});

  @override
  Widget build(BuildContext context) {
    return _body(context);
  }

  Widget _body(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SMMTextLabel.textField(
          text: Trans.current.register_name,
          isStar: true,
          child: SMMTextFormField.normal(
            isEnable: true,
            hintText: Trans.current.hint_text + Trans.current.register_name,
            validator: (v) {
              if (v!.isEmpty == true) {
                return Trans.current.validate_text +
                    Trans.current.register_name;
              } else {
                return null;
              }
            },
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        SMMTextLabel.textField(
          text: Trans.current.register_surname,
          isStar: true,
          child: SMMTextFormField.normal(
            isEnable: true,
            hintText: Trans.current.hint_text + Trans.current.register_surname,
            validator: (v) {
              if (v!.isEmpty == true) {
                return Trans.current.validate_text +
                    Trans.current.register_surname;
              } else {
                return null;
              }
            },
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        SMMTextLabel.textField(
          text: Trans.current.register_email,
          isStar: true,
          child: SMMTextFormField.email(
            isEnable: true,
            hintText: Trans.current.hint_text + Trans.current.register_email,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        SMMTextLabel.textField(
          text: Trans.current.register_password,
          isStar: true,
          child: SMMTextFormField.normal(
            isEnable: true,
            hintText: Trans.current.hint_text + Trans.current.register_password,
            validator: (v) {
              if (v!.isEmpty == true) {
                return Trans.current.validate_text +
                    Trans.current.register_password;
              } else {
                return null;
              }
            },
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        SMMTextLabel.textField(
          text: Trans.current.register_password_confirm,
          isStar: true,
          child: SMMTextFormField.normal(
            isEnable: true,
            hintText: Trans.current.register_password_hint,
            validator: (v) {
              if (v!.isEmpty == true) {
                return Trans.current.validate_text +
                    Trans.current.register_password;
              } else {
                return null;
              }
            },
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        SMMFilledButton(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(Trans.current.register_next_button,
                  style: AppTextStyles.textBTNNormal.copyWith(
                    color: AppColors.primaryDefaultInverseMain,
                  )),
              const SizedBox(
                width: 4,
              ),
              const $AssetsIconsGen().iconsArrowRight.svg()
            ],
          ),
          onPressed: () {
            context
                .read<RegisterBloc>()
                .add(const RegisterBlocEvent.finishInformationForm());
          },
        ),
        const SizedBox(
          height: 24,
        ),
        ExternalLogin(
          title: Trans.current.register_external_title,
          detail: Trans.current.register_external_detail,
          textButton: Trans.current.register_external_text_button,
          onTextButtonTap: () {
            context.pushNamed(AppRouter.loginPageNamed);
          },
        ),
      ],
    );
  }
}
