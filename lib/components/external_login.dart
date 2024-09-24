import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smm_application/components/smm_social_media_icon_button.dart';
import 'package:smm_application/core/enums/app_enums.dart';

import 'package:smm_application/themes/app_colors.dart';
import 'package:smm_application/themes/app_text_styles.dart';

class ExternalLogin extends StatelessWidget {
  const ExternalLogin({
    super.key,
    required this.title,
    required this.detail,
    required this.textButton,
    this.onTextButtonTap,
    this.onSocialMediaTap,
  });

  final String title;
  final String detail;
  final String textButton;
  final VoidCallback? onTextButtonTap;
  final Function(SocialMediaKindEnum socialMediaKindEnum)? onSocialMediaTap;

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
            SMMSocialMediaIconButton.facebook(
              onTap: () {
                onSocialMediaTap?.call(SocialMediaKindEnum.facebook);
              },
            ),
            SMMSocialMediaIconButton.google(
              onTap: () {
                onSocialMediaTap?.call(SocialMediaKindEnum.google);
              },
            ),
            SMMSocialMediaIconButton.line(
              onTap: () {
                onSocialMediaTap?.call(SocialMediaKindEnum.line);
              },
            )
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
