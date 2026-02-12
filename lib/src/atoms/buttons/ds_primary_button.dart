import 'package:ds_atomic/ds_atomic.dart';
import 'package:flutter/material.dart';

class DsPrimaryButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final bool isLoading;

  const DsPrimaryButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 48,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: DsColors.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(DsRadius.md),
          ),
          padding: const EdgeInsets.symmetric(
            vertical: DsSpacing.sm
          ),
        ),
        onPressed: isLoading ? null : onPressed,
        child: isLoading
          ? const SizedBox(
            width: 20,
            height: 20,
            child: CircularProgressIndicator(
              strokeWidth: 2,
              color:Colors.white,
            ),    
        )
        : Text (
          label,
          style: DsTypography.body.copyWith(
            color: Colors.white
          ),
          )
      )
    );
  }
}
