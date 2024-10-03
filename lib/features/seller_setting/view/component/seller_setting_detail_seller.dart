import 'package:flutter/material.dart';
import 'package:smm_application/generated/assets.gen.dart';

import 'package:smm_application/translation/generated/l10n.dart';
import 'package:smm_components/themes/app_colors.dart';
import 'package:smm_components/themes/app_text_styles.dart';

class SellerSettingDetailSeller extends StatelessWidget {
  const SellerSettingDetailSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return _body(context);
  }

  Widget _body(BuildContext context) {
    return Container(
      color: AppColors.background,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(
            height: 32,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(Trans.current.seller_setting_detail_title,
                style: AppTextStyles.textLGSemibold.copyWith(
                  color: AppColors.primaryDefaultMain,
                )),
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            color: AppColors.primaryDefaultInverseMain,
            padding: const EdgeInsets.all(24),
            child: Text(
              '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla semper tempor semper. Donec fermentum pellentesque felis sed sagittis. Donec justo lacus, aliquet non ex eget, sollicitudin consequat massa. Nullam molestie at nisi eget congue. Nam a tortor ex. Fusce augue risus, faucibus id lectus consectetur, lobortis tincidunt leo. Aenean euismod dolor purus, quis ultrices mi interdum at. Nam sed magna massa. In dapibus lobortis est, a imperdiet sem

tempor dictum. Mauris interdum, ante eu tristique feugiat, tellus tortor consequat risus, laoreet fermentum erat felis mattis metus. Pellentesque dui felis, consequat ac leo a, luctus vulputate tortor. Sed vitae iaculis purus. Suspendisse et leo varius, egestas elit non, mattis mi. Phasellus finibus malesuada orci in iaculis. Aliquam in tortor sodales, cursus est sit amet, pellentesque neque. Mauris placerat elementum nisl.''',
              style: AppTextStyles.textBase.copyWith(color: AppColors.textBase),
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(Trans.current.seller_setting_map,
                style: AppTextStyles.textLGSemibold.copyWith(
                  color: AppColors.primaryDefaultMain,
                )),
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            color: AppColors.primaryDefaultInverseMain,
            padding: const EdgeInsets.all(24),
            child: const $AssetsImagesGen().mapImage.image(),
          ),
          const SizedBox(
            height: 36,
          ),
        ],
      ),
    );
  }
}
