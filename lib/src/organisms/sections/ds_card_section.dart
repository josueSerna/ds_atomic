import 'package:ds_atomic/ds_atomic.dart';
import 'package:ds_atomic/src/atoms/text/ds_text.dart';
import 'package:flutter/material.dart';

class DsCardSection extends StatelessWidget {
  final String title;
  final List<Widget> items;

  const DsCardSection({super.key, required this.title, required this.items});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DSText(
          title,
          style: DsTypography.heading,
        ),
        const SizedBox(height: DsSpacing.md,),
        ...items.map(
          (item) => Padding(
            padding: const EdgeInsets.only(bottom: DsSpacing.sm),
            child: DsCard(child: item),
          )
        )
      ],
    );
  }
}
