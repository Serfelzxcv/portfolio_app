import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTheme {
  /// Tema claro
  static final ThemeData light = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.red,
      brightness: Brightness.light,
    ).copyWith(
      background: AppColors.white,
      surface   : AppColors.white,
    ),
    scaffoldBackgroundColor: AppColors.white,
  );

  /// Tema oscuro
  static final ThemeData dark = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.red,
      brightness: Brightness.dark,
    ).copyWith(
      background: AppColors.black,
      surface   : AppColors.black,
    ),
    scaffoldBackgroundColor: AppColors.black,
  );
}
