import 'package:ds_atomic/ds_atomic.dart';
import 'package:flutter/material.dart';
import 'package:example/pages/catalog_example.dart';

class PagesPage extends StatelessWidget {
  const PagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DsBaseTemplate(
      title: 'Pages',
      body: Column(
        children: [
          DsPrimaryButton(
            label: 'Ir a Catalog Page',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const CatalogPageExample()),
              );
            },
          ),
          const SizedBox(height: DsSpacing.md),
          DsPrimaryButton(
            label: 'Ir a Products Page',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) =>
                      const ProductsPageExample(category: 'Electrónica'),
                ),
              );
            },
          ),
          const SizedBox(height: DsSpacing.md),
          DsPrimaryButton(
            label: 'Ir a Product Detail Page',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const ProductDetailPageExample(
                    productTitle: 'Producto de Ejemplo',
                    productPrice: '\$99.99',
                    productImage: 'https://picsum.photos/300/300?random=5',
                    category: 'Electrónica',
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
