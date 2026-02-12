import 'package:ds_atomic/ds_atomic.dart';
import 'package:flutter/widgets.dart';

class DsAppHeader extends StatelessWidget {
  final String title;
  final Widget? action;

  const DsAppHeader({super.key, required this.title, this.action});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        DSText(
          title,
          style: DsTypography.heading,
        ),
        if(action != null) action!,
      ],
    );
  }
}
