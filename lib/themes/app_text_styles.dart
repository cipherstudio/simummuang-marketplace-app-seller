import 'package:flutter/material.dart';

import 'app_colors.dart';

//todo add textStyles
class AppTextStyles {
  const AppTextStyles();

  static const TextStyle header1 = TextStyle(
      color: AppColors.text1Color, fontSize: 32, fontWeight: FontWeight.bold);

  static const TextStyle header2 = TextStyle(
      color: AppColors.text1Color, fontSize: 24, fontWeight: FontWeight.w500);

  static const TextStyle header3 = TextStyle(
    color: AppColors.text1Color,
    fontSize: 24,
  );
  static const TextStyle header4 = TextStyle(
    color: AppColors.text5Color,
    fontSize: 23,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle title1 = TextStyle(
      color: AppColors.text1Color, fontSize: 18, fontWeight: FontWeight.w500);

  static const TextStyle title2 = TextStyle(
      color: AppColors.text1Color, fontSize: 18, fontWeight: FontWeight.w700);

  static const TextStyle title3 = TextStyle(
    color: AppColors.text2Color,
    fontSize: 20,
    fontWeight: FontWeight.w700,
  );
  static const TextStyle title4 = TextStyle(
    color: AppColors.text5Color,
    fontSize: 20,
    fontWeight: FontWeight.w700,
  );
  static const TextStyle title5 = TextStyle(
    color: AppColors.text1Color,
    fontSize: 20,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle subTitle1 = TextStyle(
      color: AppColors.text1Color, fontSize: 16, fontWeight: FontWeight.bold);

  static const TextStyle body1 = TextStyle(
    color: AppColors.text1Color,
    fontSize: 16,
  );

  static const TextStyle body2 = TextStyle(
      color: AppColors.text1Color, fontSize: 14, fontWeight: FontWeight.w700);

  static const TextStyle body3 = TextStyle(
    color: AppColors.text1Color,
    fontSize: 14,
  );

  static const TextStyle button1 = TextStyle(
      color: AppColors.text1Color, fontSize: 14, fontWeight: FontWeight.w700);

  static const TextStyle button2 = TextStyle(
      color: AppColors.text1Color, fontSize: 12, fontWeight: FontWeight.w700);

  static const TextStyle labelText = TextStyle(
    color: AppColors.text5Color,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle hintText = TextStyle(
    color: AppColors.text1Color,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 0.10,
  );
  static const TextStyle hintText1 = TextStyle(
    color: AppColors.text4Color,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 0.10,
  );
}
