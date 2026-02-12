
import 'package:flutter/material.dart';
import 'package:ds_atomic/ds_atomic.dart';

class DsLabeledInput extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final String? hintText;
  final bool obscureText;

  const DsLabeledInput({
    super.key,
    required this.label,
    required this.controller,
    this.hintText,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DSText(
          label,
          style: DsTypography.caption,
        ),
        const SizedBox(
          height: DsSpacing.sm,
        ),
        DsInput(
          controller: controller,
          hintText: hintText,
          obscureText: obscureText,
        )
      ],
    );
  }
}
