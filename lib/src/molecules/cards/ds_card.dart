import 'package:ds_atomic/ds_atomic.dart';
import 'package:flutter/material.dart';

class DsCard extends StatelessWidget {
  final Widget child;

  const DsCard({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(DsSpacing.md),
      decoration: BoxDecoration(
        color: DsColors.surface,
        borderRadius: BorderRadius.circular(DsRadius.md),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 2,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: child,
    );
  }
}
