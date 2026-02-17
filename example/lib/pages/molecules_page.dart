import 'package:ds_atomic/ds_atomic.dart';
import 'package:flutter/material.dart';

class MoleculesPage extends StatelessWidget {
  const MoleculesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DsBaseTemplate(
      title: 'Molecules',
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // DsCard
            DSText('DsCard', style: DsTypography.heading),
            const SizedBox(height: DsSpacing.sm),
            DsCard(child: DSText('Esto es una tarjeta básica con contenido')),

            const SizedBox(height: DsSpacing.md),

            DsCard(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DSText(
                    'Tarjeta con contenido múltiple',
                    style: DsTypography.body,
                  ),
                  const SizedBox(height: DsSpacing.sm),
                  DSText(
                    'Padding automático, fondo blanco y sombra',
                    style: DsTypography.caption,
                  ),
                ],
              ),
            ),

            const SizedBox(height: DsSpacing.lg),

            // DsIconButton
            DSText('DsIconButton', style: DsTypography.heading),
            const SizedBox(height: DsSpacing.sm),
            DsIconButton(
              icon: Icons.save,
              label: 'Guardar',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Botón con ícono presionado')),
                );
              },
            ),

            const SizedBox(height: DsSpacing.md),

            DsIconButton(
              icon: Icons.download,
              label: 'Descargar',
              onPressed: () {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(const SnackBar(content: Text('Descargando...')));
              },
            ),

            const SizedBox(height: DsSpacing.lg),

            // DsProductCard
            DSText('DsProductCard', style: DsTypography.heading),
            const SizedBox(height: DsSpacing.sm),
            DsProductCard(
              imageUrl: 'https://picsum.photos/200/200?random=10',
              title: 'Producto de Ejemplo',
              price: '\$49.99',
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Producto seleccionado')),
                );
              },
            ),

            const SizedBox(height: DsSpacing.md),

            DsProductCard(
              imageUrl: 'https://picsum.photos/200/200?random=11',
              title: 'Otro Producto',
              price: '\$99.99',
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Otro producto seleccionado')),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
