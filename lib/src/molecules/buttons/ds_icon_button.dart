import 'package:ds_atomic/ds_atomic.dart';
import 'package:flutter/widgets.dart';

class DsIconButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onPressed;

  const DsIconButton({
    super.key,
    required this.icon,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return DsPrimaryButton(
      label: label, 
      onPressed: onPressed
    );
  }
}
