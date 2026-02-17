import 'package:ds_atomic/ds_atomic.dart';
import 'package:flutter/material.dart';

/// Ejemplo de uso de DsCatalogPage
class CatalogPageExample extends StatelessWidget {
  const CatalogPageExample({super.key});

  @override
  Widget build(BuildContext context) {
    // Datos de ejemplo
    final categories = [
      CatalogItem(title: 'Electrónica'),
      CatalogItem(title: 'Ropa'),
      CatalogItem(title: 'Hogar'),
      CatalogItem(title: 'Deportes'),
      CatalogItem(title: 'Libros'),
    ];

    return DsCatalogPage(
      title: 'Categorías',
      items: categories,
      onItemTap: (item) {
        // Navegar a productos de esa categoría
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => ProductsPageExample(category: item.title),
          ),
        );
      },
    );
  }
}

/// Ejemplo de uso de DsProductsPage
class ProductsPageExample extends StatelessWidget {
  final String category;

  const ProductsPageExample({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    // Datos de ejemplo de productos
    final products = [
      ProductItem(
        imageUrl: 'https://picsum.photos/200/200?random=1',
        title: 'Producto Premium $category',
        price: '\$99.99',
      ),
      ProductItem(
        imageUrl: 'https://picsum.photos/200/200?random=2',
        title: 'Producto Estándar $category',
        price: '\$49.99',
      ),
      ProductItem(
        imageUrl: 'https://picsum.photos/200/200?random=3',
        title: 'Producto Básico $category',
        price: '\$19.99',
      ),
      ProductItem(
        imageUrl: 'https://picsum.photos/200/200?random=4',
        title: 'Producto Especial $category',
        price: '\$149.99',
      ),
    ];

    return DsProductsPage(
      title: category,
      products: products,
      onProductTap: (product) {
        // Navegar al detalle del producto
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => ProductDetailPageExample(
              productTitle: product.title,
              productPrice: product.price,
              productImage: product.imageUrl,
              category: category,
            ),
          ),
        );
      },
    );
  }
}

/// Ejemplo de uso de DsProductDetailPage
class ProductDetailPageExample extends StatelessWidget {
  final String productTitle;
  final String productPrice;
  final String productImage;
  final String category;

  const ProductDetailPageExample({
    super.key,
    required this.productTitle,
    required this.productPrice,
    required this.productImage,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    final productDetail = ProductDetail(
      imageUrl: productImage,
      title: productTitle,
      price: productPrice,
      category: category,
      description:
          'Esta es una descripción detallada del producto. '
          'Aquí puedes incluir todas las características, especificaciones '
          'y detalles relevantes que el usuario necesita conocer antes de '
          'realizar su compra.',
    );

    return DsProductDetailPage(
      product: productDetail,
      onAddToCart: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: DSText('$productTitle agregado al carrito'),
            duration: const Duration(seconds: 2),
          ),
        );
      },
    );
  }
}
