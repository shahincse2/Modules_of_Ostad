import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppThemeData {
  static ThemeData get lightThemeData {
    return ThemeData(
        colorSchemeSeed: AppColors.themeColor,
        progressIndicatorTheme: const ProgressIndicatorThemeData(
          color: AppColors.themeColor,
        ),
        scaffoldBackgroundColor: Colors.white,
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
        inputDecorationTheme: const InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
          hintStyle: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.w400,
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.themeColor)),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.themeColor)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.themeColor)),
          disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.themeColor)),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.themeColor,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            fixedSize: const Size.fromWidth(double.maxFinite),
            textStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
            padding: const EdgeInsets.symmetric(vertical: 14),
          ),
        ));
  }

  static ThemeData get darkThemeData {
    return ThemeData(
      colorSchemeSeed: AppColors.themeColor,
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: AppColors.themeColor,
      ),
      scaffoldBackgroundColor: Colors.black,
      textTheme: const TextTheme(
        bodyMedium: TextStyle(color: Colors.white),
      ),
    );
  }
}
