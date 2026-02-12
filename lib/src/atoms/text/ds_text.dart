import 'package:ds_atomic/ds_atomic.dart';
import 'package:flutter/material.dart';

class DSText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final TextAlign? align;

  const DSText(this.text, {super.key, this.style, this.align});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      style: style ?? DsTypography.body,
    );
  }
}
