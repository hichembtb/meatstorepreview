import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/product_model.dart';
import '../providers/product_provider.dart';
import 'add_button.dart';
import 'product_image.dart';
import 'product_info.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<ProductProvider>();
    final isAdded = provider.isInCart(product.id);

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.04),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            ProductImage(imageUrl: product.imageUrl),
            const SizedBox(width: 16),
            Expanded(
              child: ProductInfo(name: product.name, price: product.price),
            ),
            const SizedBox(width: 12),
            AddButton(
              isAdded: isAdded,
              onPressed: isAdded ? null : () => provider.addToCart(product),
            ),
          ],
        ),
      ),
    );
  }
}
