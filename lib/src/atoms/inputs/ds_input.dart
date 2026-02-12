import 'package:ds_atomic/ds_atomic.dart';
import 'package:flutter/material.dart';

class DsInput extends StatelessWidget {
  final TextEditingController controller;
  final String? hintText;
  final bool obscureText;

  const DsInput({
    super.key,
    required this.controller,
    this.hintText,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        contentPadding: const EdgeInsets.all(DsSpacing.md),
        filled: true,
        fillColor:  DsColors.surface,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(DsRadius.md),
          borderSide: BorderSide.none
        )
      ),
    );
  }
}
