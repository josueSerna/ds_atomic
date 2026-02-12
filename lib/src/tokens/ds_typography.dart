import 'package:ds_atomic/src/tokens/ds_colors.dart';
import 'package:flutter/material.dart';

class DsTypography {
  DsTypography._();

  static const TextStyle heading = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: DsColors.textPrimary,
  );

  static const TextStyle body = TextStyle(
    fontSize: 16,
    color: DsColors.textPrimary,
  );

  static const TextStyle caption = TextStyle(
    fontSize: 12,
    color: DsColors.textSecondary
  );

}
