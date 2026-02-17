import 'package:ds_atomic/ds_atomic.dart';
import 'package:flutter/material.dart';

class DsAppHeader extends StatelessWidget {
  final String title;
  final Widget? action;

  const DsAppHeader({
    super.key,
    required this.title,
    this.action,
  });

  @override
  Widget build(BuildContext context) {
    final canGoBack = Navigator.of(context).canPop();

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: DsSpacing.sm,
        vertical: DsSpacing.sm,
      ),
      decoration: BoxDecoration(
        color: DsColors.surface,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(24),
          bottomRight: Radius.circular(24),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 2,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: SafeArea(
        bottom: false,
        child: Row(
          children: [
            if (canGoBack)
              IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () => Navigator.pop(context),
              ),
            Expanded(
              child: DSText(
                title,
                style: DsTypography.heading,
                align: TextAlign.center,
              ),
            ),
            action ??
                const SizedBox(
                  width: 48,
                ),
          ],
        ),
      ),
    );
  }
}
