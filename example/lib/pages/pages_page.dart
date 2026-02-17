import 'package:ds_atomic/ds_atomic.dart';
import 'package:flutter/material.dart';

class PagesPage extends StatelessWidget {
  const PagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DsBaseTemplate(
      title: 'Pages',
      body: Column(
        children: [
          DsPrimaryButton(
            label: 'Ir a login Page',
            onPressed: () {
            },
          ),
          const SizedBox(height: DsSpacing.md),
          DsPrimaryButton(
            label: 'Ir a Dashboard Page',
            onPressed: () {
            },
          ),
        ],
      ),
    );
  }
}
