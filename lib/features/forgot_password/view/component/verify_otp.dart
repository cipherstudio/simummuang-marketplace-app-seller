import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:smm_application/components/shared_components.dart';
import 'package:smm_application/domain/data/models/otp/request_otp_response_model.dart';
import 'package:smm_application/features/forgot_password/bloc/forgot_password_bloc.dart';
import 'package:smm_application/themes/app_colors.dart';
import 'package:smm_application/themes/app_text_styles.dart';
import 'package:smm_application/translation/generated/l10n.dart';

class VerifyOTP extends StatelessWidget {
  const VerifyOTP({super.key});

  @override
  Widget build(BuildContext context) {
    return _body(context);
  }

  Widget _body(BuildContext context) {
    return BlocBuilder<ForgotPasswordBloc, ForgotPasswordBlocState>(
      builder: (context, state) {
        RequestOtpResponseModel? requestOtpResponseModel =
            BlocProvider.of<ForgotPasswordBloc>(context)
                .requestOtpResponseModel;

        String? _verificationCode;

        return Column(
          children: <Widget>[
            Text(
              Trans.current.forgetpassword_otp_title,
              style: AppTextStyles.textMDRegular
                  .copyWith(color: AppColors.primaryDefaultMain),
            ),
            const SizedBox(
              height: 24,
            ),
            Text(
              state.emailOrPhoneInput,
              style: AppTextStyles.displayXSbold
                  .copyWith(color: AppColors.primaryDefaultMain),
            ),
            const SizedBox(
              height: 24,
            ),
            Text(
              Trans.current.forgetpassword_fill_otp,
              style: AppTextStyles.textMDRegular
                  .copyWith(color: AppColors.primaryDefaultMain),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: OtpTextField(
                contentPadding: EdgeInsets.zero,
                alignment: Alignment.center,
                showCursor: false,
                numberOfFields: 6,
                fieldHeight: 40,
                fieldWidth: 40,
                borderWidth: 1,
                focusedBorderColor: AppColors.primaryBrandMain,
                borderColor: AppColors.primaryDefaultWeak,
                showFieldAsBox: true,
                onCodeChanged: (String code) {},
                onSubmit: (String verificationCode) {
                  _verificationCode = verificationCode;
                },
              ),
            ),
            Text(
              '${Trans.current.forgetpassword_ref_code} ${requestOtpResponseModel?.refno}',
              style: AppTextStyles.textXSRegular
                  .copyWith(color: AppColors.primaryDefaultMain),
            ),
            const SizedBox(
              height: 16,
            ),
            SMMOutlinedButton.normal(
              label:
                  '${Trans.current.forgetpassword_request_otp_title} (01:59 นาที)',
              outlineColor: AppColors.primaryBrandMain,
              onPressed: () {},
            ),
            const SizedBox(
              height: 16,
            ),
            SMMFilledButton.normal(
              label: Trans.current.forgetpassword_confirm,
              width: double.infinity,
              onPressed: () {
                BlocProvider.of<ForgotPasswordBloc>(context).add(
                  ForgotPasswordBlocEvent.verifySendedOTP(_verificationCode),
                );
              },
            ),
          ],
        );
      },
    );
  }
}
