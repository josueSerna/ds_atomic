import 'package:ds_atomic/ds_atomic.dart';
import 'package:flutter/material.dart';

class DsProductDetailPage extends StatelessWidget {
  final ProductDetail product;
  final VoidCallback? onAddToCart;

  const DsProductDetailPage({
    super.key,
    required this.product,
    this.onAddToCart,
  });

  @override
  Widget build(BuildContext context) {
    return DsBaseTemplate(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DsAppHeader(title: 'Detalle'),
            const SizedBox(height: DsSpacing.md),

            DsCard(
              child: Center(
                child: Image.network(
                  product.imageUrl,
                  fit: BoxFit.contain,
                  loadingBuilder: (context, child, progress) {
                    if (progress == null) return child;
                    return const Center(child: CircularProgressIndicator());
                  },
                  errorBuilder: (context, error, stackTrace) {
                    return Center(
                      child: Icon(
                        Icons.broken_image,
                        color: DsColors.textSecondary,
                      ),
                    );
                  },
                ),
              ),
            ),

            const SizedBox(height: DsSpacing.md),

            DSText(product.title, style: DsTypography.heading),

            const SizedBox(height: DsSpacing.sm),
            DsCard(
              child: Row(
                children: [
                  Icon(Icons.attach_money, color: DsColors.primary),
                  const SizedBox(width: DsSpacing.xs),
                  DSText(product.price, style: DsTypography.heading),
                ],
              ),
            ),

            const SizedBox(height: DsSpacing.md),

            DSText(product.category, style: DsTypography.caption),

            const SizedBox(height: DsSpacing.lg),

            DSText('Descripción', style: DsTypography.body),

            const SizedBox(height: DsSpacing.sm),

            DSText(product.description, style: DsTypography.body),

            const SizedBox(height: DsSpacing.xl),

            if (onAddToCart != null)
              DsPrimaryButton(
                label: 'Agregar al carrito',
                onPressed: onAddToCart!,
              ),
          ],
        ),
      ),
    );
  }
}

class ProductDetail {
  final String imageUrl;
  final String title;
  final String price;
  final String category;
  final String description;

  ProductDetail({
    required this.imageUrl,
    required this.title,
    required this.price,
    required this.category,
    required this.description,
  });
}
