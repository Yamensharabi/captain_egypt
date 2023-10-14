import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTheme {
  static ThemeData themeArabic = ThemeData(
    fontFamily: '',
    splashColor: null,
    primarySwatch: null,
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 22,
        color: AppColors.mainColor,
      ),
      titleMedium: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: AppColors.mainColor,
      ),
      titleSmall: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 14,
        color: AppColors.mainColor,
      ),
      bodyLarge: TextStyle(
        color: AppColors.white,
        fontWeight: FontWeight.w600,
        fontSize: 16,
        decoration: TextDecoration.none,
      ),
      bodyMedium: TextStyle(
        fontWeight: FontWeight.w400,
        color: AppColors.mainColor,
        fontSize: 14,
      ),
      bodySmall: TextStyle(
        color: AppColors.mainColor,
        fontWeight: FontWeight.w400,
        fontSize: 12,
      ),
    ),
  );
}
