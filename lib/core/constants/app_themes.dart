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
        color: AppColors.primary,
      ),
      titleMedium: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: AppColors.primary,
      ),
      titleSmall: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 14,
        color: AppColors.primary,
      ),
      bodyLarge: TextStyle(
        color: AppColors.primary,
        fontWeight: FontWeight.w600,
        fontSize: 16,
        decoration: TextDecoration.none,
      ),
      bodyMedium: TextStyle(
        fontWeight: FontWeight.w400,
        color: AppColors.primary,
        fontSize: 14,
      ),
      bodySmall: TextStyle(
        color: AppColors.primary,
        fontWeight: FontWeight.w400,
        fontSize: 12,
      ),
    ),
  );
}
