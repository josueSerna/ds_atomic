import 'package:ds_atomic/ds_atomic.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DsBaseTemplate(
      title: 'Dashboard', 
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DsAppHeader(
            title: 'Bienvenido',
            action: IconButton(
              icon: const Icon(Icons.logout),
              onPressed: () {},
            ),
          ),
          const SizedBox(height: 24),
          DsCardSection(
            title: 'Resumen', 
            items: const [
              DSText('Usuarios Activos'),
              DSText('Ventas del dia'),
              DSText('Notificaciones'),
            ]
          )
        ],
      ),
    );
  }
}
