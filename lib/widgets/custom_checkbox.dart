import 'package:flutter/material.dart';
import 'package:smm_application/generated/assets.gen.dart';
import 'package:smm_application/themes/app_colors.dart';
import 'package:smm_application/themes/app_text_styles.dart';

abstract class SMMCheckbox extends Widget {
  factory SMMCheckbox(
          {Key? key, bool isCheck = false, Function(bool?)? onChanged}) =>
      _Checkbox(
        key: key,
        isChecked: isCheck,
        onChanged: onChanged,
      );
  factory SMMCheckbox.withText(
          {Key? key,
          bool isCheck = false,
          Function(bool?)? onChanged,
          required String text,
          Color? textColor}) =>
      _CheckboxWithText(
        isChecked: isCheck,
        onChanged: onChanged,
        text: text,
        textColor: textColor,
      );
}

class _Checkbox extends StatefulWidget implements SMMCheckbox {
  const _Checkbox({super.key, this.onChanged, this.isChecked = false});

  final bool isChecked;
  final Function(bool?)? onChanged;

  @override
  State<_Checkbox> createState() => _CheckboxState();
}

class _CheckboxState extends State<_Checkbox> {
  bool isChecked = false;

  @override
  void initState() {
    isChecked = widget.isChecked;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Color activeColor = isChecked
        ? AppColors.primaryBrandMain
        : AppColors.primaryDefaultInverseWeak;
    return InkWell(
      onTap: () {
        setState(() => isChecked = !isChecked);
        widget.onChanged?.call(isChecked);
      },
      child: Container(
        width: 20,
        height: 20,
        decoration: BoxDecoration(
          color: isChecked
              ? AppColors.primaryBrandVeryLight2
              : AppColors.primaryDefaultInverseMain,
          border: Border.all(
            color: activeColor,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(4),
        ),
        child: isChecked ? const $AssetsIconsGen().iconCheck.svg() : null,
      ),
    );
  }
}

class _CheckboxWithText extends StatelessWidget implements SMMCheckbox {
  const _CheckboxWithText(
      {this.onChanged,
      this.isChecked = false,
      required this.text,
      this.textColor});
  final bool isChecked;
  final Function(bool?)? onChanged;
  final String text;
  final Color? textColor;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _Checkbox(
            isChecked: isChecked,
            onChanged: onChanged,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: AppTextStyles.textMDRegular.copyWith(color: textColor),
          )
        ],
      ),
    );
  }
}
