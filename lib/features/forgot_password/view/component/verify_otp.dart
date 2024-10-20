import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';
import 'package:smm_seller_application/domain/data/models/otp/request_otp_response_model.dart';
import 'package:smm_seller_application/extensions/extension.dart';
import 'package:smm_seller_application/features/forgot_password/bloc/forgot_password_bloc.dart';

import 'package:smm_seller_application/translation/generated/l10n.dart';
import 'package:smm_components/components/shared_components.dart';
import 'package:smm_components/themes/app_colors.dart';
import 'package:smm_components/themes/app_text_styles.dart';

class VerifyOTP extends StatelessWidget {
  const VerifyOTP({super.key});

  @override
  Widget build(BuildContext context) {
    return _body(context);
  }

  Widget _body(BuildContext context) {
    List<String> otpCodeList = [];
    List<String> otpCodeList2 = [];

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
                onCodeChanged: (String code) {
                  print(code);
                  otpCodeList.add(code);
                },
                onSubmit: (String verificationCode) {
                  print(verificationCode);
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
            SMMOutlinedButton(
              outlineColor: AppColors.primaryBrandMain,
              enable: state.enableRequestOTP,
              onPressed: () {
                context
                    .read<ForgotPasswordBloc>()
                    .add(const ForgotPasswordBlocEvent.requestOTP());
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '${Trans.current.forgetpassword_request_otp_title} ',
                    style: AppTextStyles.textXSMedium
                        .copyWith(color: AppColors.primaryBrandMain),
                  ),
                  if (!state.enableRequestOTP) ...[
                    Text(
                      '(',
                      style: AppTextStyles.textXSMedium
                          .copyWith(color: AppColors.primaryBrandMain),
                    ),
                    TimerCountdown(
                      enableDescriptions: false,
                      spacerWidth: 1,
                      colonsTextStyle: AppTextStyles.textXSMedium
                          .copyWith(color: AppColors.primaryBrandMain),
                      timeTextStyle: AppTextStyles.textXSMedium
                          .copyWith(color: AppColors.primaryBrandMain),
                      format: CountDownTimerFormat.minutesSeconds,
                      endTime: requestOtpResponseModel?.expiredTime ??
                          DateTime.now(),
                      onEnd: () {
                        context.read<ForgotPasswordBloc>().add(
                            const ForgotPasswordBlocEvent.setEnableOTPButton());
                      },
                    ),
                    Text(
                      ' นาที)',
                      style: AppTextStyles.textXSMedium
                          .copyWith(color: AppColors.primaryBrandMain),
                    ),
                  ]
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            SMMFilledButton.normal(
              label: Trans.current.forgetpassword_confirm,
              width: double.infinity,
              onPressed: () {
                List<int> indicesToSelect = [0, 2, 4, 6, 8, 10, 12];

                for (int index in indicesToSelect) {
                  if (index < otpCodeList.length) {
                    otpCodeList2.add(otpCodeList[index]);
                  } else {
                    break;
                  }
                }
                String otpCodeFromList = otpCodeList2.join('');

                if (!otpCodeFromList.stringNullOrEmpty &&
                    _verificationCode == null) {
                  BlocProvider.of<ForgotPasswordBloc>(context).add(
                    ForgotPasswordBlocEvent.verifySendedOTP(otpCodeFromList),
                  );
                  otpCodeList2 = [];
                } else {
                  BlocProvider.of<ForgotPasswordBloc>(context).add(
                    ForgotPasswordBlocEvent.verifySendedOTP(_verificationCode),
                  );
                }
              },
            ),
          ],
        );
      },
    );
  }
}
