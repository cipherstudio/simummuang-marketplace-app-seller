import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:smm_application/components/shared_components.dart';
import 'package:smm_application/features/forgot_password/bloc/forgot_password_bloc.dart';
import 'package:smm_application/router/app_router.dart';
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
    TextEditingController emailOrPhoneNumberInputController =
        TextEditingController();

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        _buildEmailOrPhoneNumber(context, emailOrPhoneNumberInputController),
        const SizedBox(
          height: 24,
        ),
        SMMFilledButton.normal(
          label: Trans.current.forgetpassword_confirm,
          width: double.infinity,
          onPressed: () {
            context.read<ForgotPasswordBloc>().add(
                  ForgotPasswordBlocEvent.requestOTP(
                    emailOrPhoneNumber: emailOrPhoneNumberInputController.text,
                  ),
                );
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
    );
  }

  Widget _buildEmailOrPhoneNumber(
    BuildContext context,
    TextEditingController emailOrPhoneNumberInputController,
  ) {
    return SMMTextLabel.textField(
      text: Trans.current.forgetpassword_mail_or_phone,
      isStar: true,
      child: BlocBuilder<ForgotPasswordBloc, ForgotPasswordBlocState>(
        buildWhen: (previous, current) => true,
        builder: (BuildContext context, ForgotPasswordBlocState state) {
          return SMMTextFormField.normal(
            controller: emailOrPhoneNumberInputController,
            onChanged: (value) {
              if (value!.isEmpty) {
                BlocProvider.of<ForgotPasswordBloc>(context).add(
                  const ForgotPasswordBlocEvent
                      .initialEmailOrPhoneNumberFormField(),
                );
              }
            },
            autovalidateMode:
                state.emailOrPhoneNumberFieldProperties.autovalidateMode,
            validator: state.emailOrPhoneNumberFieldProperties.validator,
            isEnable: true,
            hintText: Trans.current.login_email_hint_label,
          );
        },
      ),
    );
  }
}
