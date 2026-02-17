import 'package:ds_atomic/ds_atomic.dart';
import 'package:flutter/material.dart';

class OrganismsPage extends StatelessWidget {
  const OrganismsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DsBaseTemplate(
      title: 'Organisms',
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // DsAppHeader
            DSText('DsAppHeader', style: DsTypography.heading),
            const SizedBox(height: DsSpacing.sm),
            DSText(
              'Header con título y acción opcional',
              style: DsTypography.caption,
            ),
            const SizedBox(height: DsSpacing.sm),
            DsCard(
              child: Column(
                children: [
                  DsAppHeader(
                    title: 'Mi Header',
                    action: IconButton(
                      icon: const Icon(Icons.settings),
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Acción presionada')),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: DsSpacing.md),

            DSText('Header solo con título', style: DsTypography.caption),
            const SizedBox(height: DsSpacing.sm),
            DsCard(
              child: Column(children: [DsAppHeader(title: 'Header Simple')]),
            ),

            const SizedBox(height: DsSpacing.lg),

            // DsCardSection
            DSText('DsCardSection', style: DsTypography.heading),
            const SizedBox(height: DsSpacing.sm),
            DSText(
              'Sección con título y lista de items en tarjetas',
              style: DsTypography.caption,
            ),
            const SizedBox(height: DsSpacing.sm),
            DsCardSection(
              title: 'Resumen del Sistema',
              items: const [
                DSText('Usuarios Activos: 1,234'),
                DSText('Ventas del día: \$12,500'),
                DSText('Notificaciones: 8'),
                DSText('Pedidos pendientes: 15'),
              ],
            ),

            const SizedBox(height: DsSpacing.lg),

            DsCardSection(
              title: 'Estadísticas',
              items: const [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DSText('Visitas hoy'),
                    DSText(
                      '2,340',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DSText('Nuevos usuarios'),
                    DSText(
                      '127',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
