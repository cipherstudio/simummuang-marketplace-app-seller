import 'package:flutter/material.dart';
import 'package:smm_application/core/keys/app_keys.dart';

import 'app_colors.dart';

//todo add textStyles
class AppTextStyles {
  const AppTextStyles();

  static const TextStyle textMDRegular = TextStyle(
      color: AppColors.black,
      fontSize: 16,
      fontWeight: FontWeight.w400,
      fontFamily: AppKeys.fontFamily);

  static const TextStyle textMDSemibold = TextStyle(
      color: AppColors.black, fontSize: 16, fontWeight: FontWeight.w600);

  static const TextStyle textSMRegular = TextStyle(
      color: AppColors.black, fontSize: 14, fontWeight: FontWeight.w400);

  static const TextStyle textSMSemiBold = TextStyle(
      color: AppColors.black, fontSize: 14, fontWeight: FontWeight.w600);

  static const TextStyle textBTNNormal = TextStyle(
      color: AppColors.black, fontSize: 16, fontWeight: FontWeight.w400);

  static const TextStyle displaySMSemibold = TextStyle(
      color: AppColors.black, fontSize: 30, fontWeight: FontWeight.w600);

  static const TextStyle displayXSbold = TextStyle(
      color: AppColors.black, fontSize: 24, fontWeight: FontWeight.w700);

  static const TextStyle textXSRegular = TextStyle(
      color: AppColors.black, fontSize: 12, fontWeight: FontWeight.w400);

  static const TextStyle textBTNSmall = TextStyle(
      color: AppColors.black, fontSize: 13, fontWeight: FontWeight.w400);

  static const TextStyle textLGSemibold = TextStyle(
      color: AppColors.black, fontSize: 18, fontWeight: FontWeight.w600);

  static const TextStyle textBase = TextStyle(
      color: AppColors.black, fontSize: 14, fontWeight: FontWeight.w400);

  static const TextStyle textMDSemiBold = TextStyle(
      color: AppColors.black, fontSize: 16, fontWeight: FontWeight.w600);
}
