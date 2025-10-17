import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_text_styles.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: AppColors.primary,
      scaffoldBackgroundColor: AppColors.white,
      colorScheme: const ColorScheme.light(
        primary: AppColors.primary,
        secondary: AppColors.accent,
      ),
      textTheme: TextTheme(headlineLarge: AppTextStyles.mainPageHeadline),
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.white,
        titleTextStyle: AppTextStyles.pageHeadline,
      ),
      buttonTheme: const ButtonThemeData(buttonColor: AppColors.primary),
    );
  }
}
