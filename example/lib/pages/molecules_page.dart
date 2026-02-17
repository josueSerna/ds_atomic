import 'package:ds_atomic/ds_atomic.dart';
import 'package:flutter/material.dart';

class MoleculesPage extends StatelessWidget {
  const MoleculesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DsBaseTemplate(
      title: 'Molecules',
      body: Column(
        children: [
          DsCard(
            child: Text('Esto es una carta')
          ),
        ],
      )
    );
  }
}
