import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:smm_application/generated/assets.gen.dart';
import 'package:smm_application/themes/app_colors.dart';
import 'package:smm_application/themes/app_text_styles.dart';

class ExternalLogin extends StatelessWidget {
  const ExternalLogin(
      {super.key,
      required this.title,
      required this.detail,
      required this.textButton,
      this.onTextButtonTap});
  final String title;
  final String detail;
  final String textButton;
  final VoidCallback? onTextButtonTap;
  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      direction: Axis.vertical,
      spacing: 16,
      children: [
        Text(
          title,
          style: AppTextStyles.textMDRegular
              .copyWith(color: AppColors.primaryDefaultStrong),
        ),
        Wrap(
          spacing: 40,
          alignment: WrapAlignment.center,
          children: [
            const $AssetsIconsGen().iconSigninGoogle.svg(),
            const $AssetsIconsGen().iconSigninFacebook.svg(),
            const $AssetsIconsGen().iconSigninLine.svg()
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              detail,
              style: AppTextStyles.textSMRegular
                  .copyWith(color: AppColors.primaryDefaultStrong),
            ),
            const SizedBox(
              width: 4,
            ),
            GestureDetector(
                onTap: onTextButtonTap,
                child: Text(textButton,
                    style: AppTextStyles.textSMSemiBold
                        .copyWith(color: AppColors.primaryBrandMain)))
          ],
        )
      ],
    );
  }
}
