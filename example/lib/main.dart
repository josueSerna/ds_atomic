import 'package:ds_atomic/ds_atomic.dart';
import 'package:example/showcase_home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ShowcaseApp());
}

class ShowcaseApp extends StatelessWidget {
  const ShowcaseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Desing System Showcase',
      theme: DsTheme.lightTheme,
      home: const ShowcaseHome(),
    );
  }
}
