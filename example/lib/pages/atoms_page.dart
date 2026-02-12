import 'package:ds_atomic/ds_atomic.dart';
import 'package:flutter/material.dart';

class AtomsPage extends StatelessWidget {
  const AtomsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DsBaseTemplate(
      title: 'Atoms', 
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DSText('Texto Normal'),
          const SizedBox(height: DsSpacing.md),
          DSText(
            'Text heading',
            style: DsTypography.heading,
          ),
          const SizedBox(height: DsSpacing.md),
          DsPrimaryButton(
            label: 'Botón Primario', 
            onPressed: (){},
          ),
          const SizedBox(height: DsSpacing.md),
          DsInput(
            controller: TextEditingController(),
            hintText: 'Input Básico',
          )
        ],
      )
    );
  }
}
