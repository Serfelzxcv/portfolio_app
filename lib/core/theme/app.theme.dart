import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTheme {
  /// Tema claro
  static final ThemeData light = ThemeData(
    useMaterial3: true,
    fontFamily: 'Nunito', // 👈 fuente global
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.red,
      brightness: Brightness.light,
    ).copyWith(
      background: AppColors.white,
      surface: AppColors.white,
    ),
    scaffoldBackgroundColor: AppColors.white,
    textTheme: _textTheme(Brightness.light),
  );

  /// Tema oscuro
  static final ThemeData dark = ThemeData(
    useMaterial3: true,
    fontFamily: 'Nunito', // 👈 fuente global
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.red,
      brightness: Brightness.dark,
    ).copyWith(
      background: AppColors.black,
      surface: AppColors.black,
    ),
    scaffoldBackgroundColor: AppColors.black,
    textTheme: _textTheme(Brightness.dark),
  );

  /// TextTheme personalizado (puedes adaptarlo según tus jerarquías)
  static TextTheme _textTheme(Brightness brightness) {
    final base = brightness == Brightness.light
        ? ThemeData.light().textTheme
        : ThemeData.dark().textTheme;

    return base.copyWith(
      displayLarge:   base.displayLarge?.copyWith(fontWeight:   FontWeight.w800),
      displayMedium:  base.displayMedium?.copyWith(fontWeight:  FontWeight.w700),
      headlineLarge:  base.headlineLarge?.copyWith(fontWeight:  FontWeight.w700),
      headlineMedium: base.headlineMedium?.copyWith(fontWeight: FontWeight.w600),
      titleLarge:     base.titleLarge?.copyWith(fontWeight:     FontWeight.w700),
      titleMedium:    base.titleMedium?.copyWith(fontWeight:    FontWeight.w600),
      bodyLarge:      base.bodyLarge?.copyWith(fontWeight:      FontWeight.w400),
      bodyMedium:     base.bodyMedium?.copyWith(fontWeight:     FontWeight.w400),
      labelLarge:     base.labelLarge?.copyWith(fontWeight:     FontWeight.w600),
    );
  }
}
