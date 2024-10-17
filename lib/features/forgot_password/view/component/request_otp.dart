import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smm_components/validators/smm_phone_number_validator.dart';
import 'package:smm_seller_application/features/forgot_password/bloc/forgot_password_bloc.dart';

import 'package:smm_seller_application/translation/generated/l10n.dart';
import 'package:smm_components/components/shared_components.dart';

class RequestOTP extends StatelessWidget {
  const RequestOTP({super.key});

  @override
  Widget build(BuildContext context) {
    return _body(context);
  }

  Widget _body(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    final emailOrPhoneNumberInputController =
        context.read<ForgotPasswordBloc>().emailOrPhoneNumberInputController;
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _buildPhoneNumber(context, emailOrPhoneNumberInputController),
          const SizedBox(
            height: 24,
          ),
          SMMFilledButton.normal(
            label: Trans.current.forgetpassword_confirm,
            width: double.infinity,
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                print('request OTP is valid.');
                context.read<ForgotPasswordBloc>().add(
                      const ForgotPasswordBlocEvent.requestOTP(),
                    );
              }
            },
          ),
          const SizedBox(
            height: 24,
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     Text(
          //       Trans.current.forgetpassword_does_not_account,
          //       style: AppTextStyles.textSMRegular
          //           .copyWith(color: AppColors.primaryDefaultStrong),
          //     ),
          //     const SizedBox(
          //       width: 4,
          //     ),
          //     GestureDetector(
          //       onTap: () {
          //         context.pushNamed(AppRouter.registerPageNamed);
          //       },
          //       child: Text(
          //         Trans.current.forgetpassword_create_account,
          //         style: AppTextStyles.textSMSemiBold
          //             .copyWith(color: AppColors.primaryBrandMain),
          //       ),
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }

  Widget _buildPhoneNumber(
    BuildContext context,
    TextEditingController emailOrPhoneNumberInputController,
  ) {
    return SMMTextLabel.textField(
      text: Trans.current.forgetpassword_mail_or_phone,
      isStar: true,
      child: SMMTextFormField.normal(
        controller: emailOrPhoneNumberInputController,
        validator: (value) {
          return SMMPhoneNumberValidator.validateInputPhoneNumber(value);
        },
        isEnable: true,
        hintText: Trans.current.login_email_hint_label,
      ),
    );
  }
}
