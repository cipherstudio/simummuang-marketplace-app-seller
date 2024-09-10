import 'package:flutter/material.dart';
import 'package:smm_application/core/keys/app_keys.dart';
import 'app_colors.dart';

class AppTheme {
  static final mainTheme = ThemeData(
      primaryColor: AppColors.primaryColor,
      fontFamily: AppKeys.fontFamily,
      appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: false,
          titleSpacing: 0,
          titleTextStyle: TextStyle(
            fontSize: 20,
            fontFamily: AppKeys.fontFamily,
          )),
      textSelectionTheme:
          const TextSelectionThemeData(cursorColor: AppColors.primaryColor),
      inputDecorationTheme: const InputDecorationTheme(
          focusColor: AppColors.primaryColor,
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.primaryColor))),
      colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: AppColors.primaryColor,
          background: AppColors.backgroundColor));
}
