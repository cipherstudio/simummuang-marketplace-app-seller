import 'package:flutter/material.dart';
import 'package:smm_application/core/keys/app_keys.dart';
import 'package:smm_application/themes/app_colors.dart';
import 'package:smm_application/themes/app_text_styles.dart';

///text label
class SMMTextLabel extends StatelessWidget {
  const SMMTextLabel({
    super.key,
    required this.textSpans,
    required this.child,
  });

  // ignore: use_key_in_widget_constructors
  SMMTextLabel.textField({
    required Widget child,
    required String text,
    bool isStar = false,
  }) : this(
          textSpans: <TextSpan>[
            TextSpan(
                text: text,
                style: AppTextStyles.textMDRegular.copyWith(
                    fontFamily: AppKeys.fontFamily,
                    color: AppColors.primaryDefaultMain)),
            if (isStar)
              TextSpan(
                  text: '*',
                  style: AppTextStyles.textMDRegular.copyWith(
                      fontFamily: AppKeys.fontFamily,
                      color: AppColors.primaryBrandMain)),
          ],
          child: child,
        );

  ///label text
  final List<TextSpan> textSpans;

  ///child
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        RichText(
          text: TextSpan(children: <TextSpan>[...textSpans]),
        ),
        const SizedBox(
          height: 8,
        ),
        child
      ],
    );
  }
}
