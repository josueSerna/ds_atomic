import 'package:ds_atomic/ds_atomic.dart';
import 'package:flutter/material.dart';

class TemplatesPage extends StatelessWidget {
  const TemplatesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DsBaseTemplate(
      title: 'Templates',
      body: Column(
        children: const [
          DSText('Este contenido esta dentro de un BaseTemplate')
        ],
      ),
    );
  }
}