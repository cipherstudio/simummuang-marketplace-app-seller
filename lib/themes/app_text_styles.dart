import 'package:flutter/material.dart';

import 'app_colors.dart';

//todo add textStyles
class AppTextStyles {
  const AppTextStyles();

  static const TextStyle textMDRegular = TextStyle(
      color: AppColors.black, fontSize: 16, fontWeight: FontWeight.w400);

  static const TextStyle textSMRegular = TextStyle(
      color: AppColors.black, fontSize: 14, fontWeight: FontWeight.w400);

  static const TextStyle textSMSemiBold = TextStyle(
      color: AppColors.black, fontSize: 14, fontWeight: FontWeight.w600);
}
