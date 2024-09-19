import 'package:flutter/material.dart';
import 'package:smm_application/components/shared_components.dart';
import 'package:smm_application/components/smm_image_picker.dart';
import 'package:smm_application/themes/app_colors.dart';
import 'package:smm_application/themes/app_text_styles.dart';
import 'package:smm_application/translation/generated/l10n.dart';

class SellerSettingStoreInfo extends StatefulWidget {
  const SellerSettingStoreInfo({super.key});

  @override
  State<SellerSettingStoreInfo> createState() => _SellerSettingStoreInfoState();
}

class _SellerSettingStoreInfoState extends State<SellerSettingStoreInfo> {
  @override
  Widget build(BuildContext context) {
    /**
     * to-do
     * remove Scaffold when merged to seller setting feature.
     */
    return Container(
      color: AppColors.background,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 32,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              Trans.current.seller_setting_store_image_label,
              style: AppTextStyles.textLGSemibold,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const SMMImagePicker(),
          const SizedBox(
            height: 32,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              Trans.current.seller_setting_store_name_label,
              style: AppTextStyles.textLGSemibold,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          SMMTextFormField.settingNormal(
            isEnable: true,
          ),
          const SizedBox(
            height: 32,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              Trans.current.seller_setting_store_type_label,
              style: AppTextStyles.textLGSemibold,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          SMMTextFormField.settingNormal(
            isEnable: true,
            suffixText: Trans.current.seller_setting_store_label_suffix_text,
          ),
          SMMTextFormField.settingNormal(
            isEnable: true,
            suffixText: Trans.current.seller_setting_store_zone_suffix_text,
          ),
          SMMTextFormField.settingNormal(
            isEnable: true,
            suffixText:
                Trans.current.seller_setting_store_opening_hours_suffix_text,
          ),
          SMMTextFormField.settingNormal(
            isEnable: true,
            suffixText: Trans.current.seller_setting_store_tel_num_suffix_text,
          ),
          const SizedBox(
            height: 32,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              Trans.current.seller_setting_seller_information_label,
              style: AppTextStyles.textLGSemibold,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          SMMTextFormField.settingNormal(
            isEnable: true,
            suffixText: Trans.current.seller_setting_seller_name_suffix_text,
          ),
          SMMTextFormField.settingNormal(
            isEnable: true,
            suffixText: Trans.current.seller_setting_seller_tel_num_suffix_text,
          ),
          SMMTextFormField.settingNormal(
            isEnable: true,
            suffixText: Trans.current.seller_setting_seller_email_suffix_text,
          ),
          SMMTextFormField.settingMultipleLines(
            isEnable: true,
            suffixText: Trans.current.seller_setting_seller_suffix_text,
          ),
          const SizedBox(
            height: 34,
          ),
        ],
      ),
    );
  }
}
