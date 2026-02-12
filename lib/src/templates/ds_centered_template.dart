import 'package:ds_atomic/ds_atomic.dart';
import 'package:flutter/material.dart';

class DsCenteredTemplate extends StatelessWidget {
  final Widget child;

  const DsCenteredTemplate({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DsColors.background,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(DsSpacing.lg),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 400),
            child: child,
          ),
        ),
      ),
    );
  }
}
