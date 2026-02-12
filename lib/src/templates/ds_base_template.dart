import 'package:ds_atomic/ds_atomic.dart';
import 'package:flutter/material.dart';

class DsBaseTemplate extends StatelessWidget {
  final String? title;
  final Widget body;
  final Widget? floatingActionButton;

  const DsBaseTemplate({
    super.key,
    this.title,
    required this.body,
    this.floatingActionButton,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DsColors.background,
      appBar: title != null
        ? AppBar(
          title: Text(title!),
          centerTitle: true,
        )
        : null,
      body: Padding(
        padding: const EdgeInsets.all(DsSpacing.lg),
        child: body,
      ),
      floatingActionButton: floatingActionButton,
    );
  }
}
