import 'package:ds_atomic/ds_atomic.dart';
import 'package:flutter/material.dart';

class DsProductCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String price;
  final VoidCallback? onTap;

  const DsProductCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.price,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: DsCard(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Imagen
            ClipRRect(
              borderRadius: BorderRadius.circular(DsRadius.sm),
              child: Image.network(
                imageUrl,
                height: 120,
                width: double.infinity,
                fit: BoxFit.contain,
              ),
            ),

            const SizedBox(height: DsSpacing.sm),

            // Título
            DSText(
              title,
              style: DsTypography.body,
            ),

            const SizedBox(height: DsSpacing.sm),

            // Precio
            DSText(
              price,
              style: DsTypography.caption,
            ),
          ],
        ),
      ),
    );
  }
}
