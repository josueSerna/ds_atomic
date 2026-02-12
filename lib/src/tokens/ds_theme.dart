import 'package:ds_atomic/src/tokens/ds_colors.dart';
import 'package:flutter/material.dart';

class DsTheme {
  DsTheme._();

  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: DsColors.background,
    primaryColor: DsColors.primary,
    colorScheme: ColorScheme.fromSeed(seedColor: DsColors.primary)
  );
}
