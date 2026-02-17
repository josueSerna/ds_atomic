import 'package:ds_atomic/ds_atomic.dart';
import 'package:flutter/material.dart';


class DsProductsPage extends StatelessWidget {
  final String title;
  final List<ProductItem> products;
  final Function(ProductItem) onProductTap;

  const DsProductsPage({
    super.key,
    required this.title,
    required this.products,
    required this.onProductTap,
  });

  @override
  Widget build(BuildContext context) {
    return DsBaseTemplate(
      body: Column(
        children: [
          DsAppHeader(title: title),
          const SizedBox(height: DsSpacing.md),
          Expanded(
            child: ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];
                return Padding(
                  padding: const EdgeInsets.only(bottom: DsSpacing.sm),
                  child: DsProductCard(
                    imageUrl: product.imageUrl,
                    title: product.title,
                    price: product.price,
                    onTap: () => onProductTap(product),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ProductItem {
  final String imageUrl;
  final String title;
  final String price;

  ProductItem({
    required this.imageUrl,
    required this.title,
    required this.price,
  });
}
