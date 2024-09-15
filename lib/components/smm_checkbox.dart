import 'package:flutter/material.dart';
import 'package:smm_application/core/keys/app_keys.dart';
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
          Color? textColor,
          TextDecoration? textDecoration,
          bool isStar = false}) =>
      _CheckboxWithText(
        isChecked: isCheck,
        onChanged: onChanged,
        text: text,
        textColor: textColor,
        textDecoration: textDecoration,
        isStar: isStar,
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
      this.textColor,
      this.textDecoration,
      this.isStar = false});
  final bool isChecked;
  final bool isStar;
  final Function(bool?)? onChanged;
  final String text;
  final Color? textColor;
  final TextDecoration? textDecoration;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        _Checkbox(
          isChecked: isChecked,
          onChanged: onChanged,
        ),
        const SizedBox(
          width: 10,
        ),
        RichText(
            text: TextSpan(children: [
          TextSpan(
              text: text,
              style: AppTextStyles.textMDRegular.copyWith(
                  fontFamily: AppKeys.fontFamily,
                  decoration: textDecoration,
                  color: AppColors.primaryDefaultMain)),
          if (isStar)
            TextSpan(
                text: '*',
                style: AppTextStyles.textMDRegular.copyWith(
                    fontFamily: AppKeys.fontFamily,
                    color: AppColors.primaryDefaultMain)),
        ])),
      ],
    );
  }
}
