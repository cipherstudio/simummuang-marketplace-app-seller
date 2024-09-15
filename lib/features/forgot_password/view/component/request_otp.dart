import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smm_application/components/shared_components.dart';
import 'package:smm_application/features/forgot_password/bloc/forgot_password_bloc.dart';
import 'package:smm_application/themes/app_colors.dart';
import 'package:smm_application/themes/app_text_styles.dart';
import 'package:smm_application/translation/generated/l10n.dart';

class RequestOTP extends StatelessWidget {
  const RequestOTP({super.key});

  @override
  Widget build(BuildContext context) {
    return _body(context);
  }

  Widget _body(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SMMTextLabel.textField(
          text: Trans.current.forgetpassword_mail_or_phone,
          isStar: true,
          child: SMMTextFormField.normal(
            isEnable: true,
            onChanged: (value) => context
                .read<ForgotPasswordBloc>()
                .add(ForgotPasswordBlocEvent.emailOrPhoneChange(value ?? '')),
            hintText: Trans.current.hint_text +
                Trans.current.forgetpassword_mail_or_phone,
            validator: (v) {
              if (v!.isEmpty == true) {
                return Trans.current.validate_text +
                    Trans.current.forgetpassword_mail_or_phone;
              } else {
                return null;
              }
            },
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        SMMFilledButton.normal(
          label: Trans.current.forgetpassword_confirm,
          width: double.infinity,
          onPressed: () {
            context
                .read<ForgotPasswordBloc>()
                .add(const ForgotPasswordBlocEvent.requestOTP());
          },
        ),
        const SizedBox(
          height: 24,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              Trans.current.forgetpassword_does_not_account,
              style: AppTextStyles.textSMRegular
                  .copyWith(color: AppColors.primaryDefaultStrong),
            ),
            const SizedBox(
              width: 4,
            ),
            GestureDetector(
              onTap: () {},
              child: Text(
                Trans.current.forgetpassword_create_account,
                style: AppTextStyles.textSMSemiBold
                    .copyWith(color: AppColors.primaryBrandMain),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
