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
                loadingBuilder: (context, child, progress) {
                  if (progress == null) return child;
                  return Container(
                    height: 120,
                    alignment: Alignment.center,
                    child: CircularProgressIndicator(
                      value: progress.expectedTotalBytes != null
                          ? progress.cumulativeBytesLoaded /
                                progress.expectedTotalBytes!
                          : null,
                    ),
                  );
                },
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    height: 120,
                    color: DsColors.background,
                    child: Icon(
                      Icons.broken_image,
                      color: DsColors.textSecondary,
                      size: 48,
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: DsSpacing.sm),

            // Título
            DSText(title, style: DsTypography.body),

            const SizedBox(height: DsSpacing.sm),

            // Precio
            DSText(price, style: DsTypography.caption),
          ],
        ),
      ),
    );
  }
}
