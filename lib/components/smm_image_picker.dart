import 'package:flutter/material.dart';
import 'package:smm_application/components/shared_components.dart';
import 'package:smm_application/generated/assets.gen.dart';
import 'package:smm_application/themes/app_colors.dart';
import 'package:smm_application/themes/app_text_styles.dart';
import 'package:smm_application/translation/generated/l10n.dart';

class SMMImagePicker extends StatelessWidget {
  const SMMImagePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(minHeight: 242),
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    _buildEditButton(),
                  ],
                ),
              ),
              $AssetsImagesGen().imagePickerPlaceholder.image(
                    width: 160,
                    height: 160,
                  ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildEditButton() {
    return SMMOutlinedButton(
      child: Row(
        children: [
          const Icon(
            Icons.edit,
            size: 18,
            color: AppColors.primaryBrandMain,
          ),
          const SizedBox(
            width: 4.0,
          ),
          Text(
            Trans.current.component_button_label_edit,
            style: AppTextStyles.textBTNSmall
                .copyWith(color: AppColors.primaryBrandMain),
          ),
        ],
      ),
      onPressed: () {},
    );
  }
}
