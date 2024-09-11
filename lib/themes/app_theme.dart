import 'package:flutter/material.dart';
import 'package:smm_application/core/keys/app_keys.dart';
import 'app_colors.dart';

class AppTheme {
  static final mainTheme = ThemeData(
      primaryColor: AppColors.primaryBrandMain,
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
          const TextSelectionThemeData(cursorColor: AppColors.primaryBrandMain),
      inputDecorationTheme: const InputDecorationTheme(
          focusColor: AppColors.primaryBrandMain,
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.primaryBrandMain))),
      colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: AppColors.primaryBrandMain,
          background: AppColors.primaryDefaultInverseMain));
}
