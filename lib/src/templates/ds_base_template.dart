import 'package:ds_atomic/ds_atomic.dart';
import 'package:flutter/material.dart';

class DsBaseTemplate extends StatelessWidget {
  final String? title;
  final Widget body;
  final Widget? action;
  final Widget? floatingActionButton;

  const DsBaseTemplate({
    super.key,
    this.title,
    required this.body,
    this.action,
    this.floatingActionButton,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DsColors.background,
      body: Column(
        children: [
          if (title != null)
            DsAppHeader(
              title: title!,
              action: action,
            ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(DsSpacing.lg),
              child: body,
            ),
          ),
        ],
      ),
      floatingActionButton: floatingActionButton,
    );
  }
}
