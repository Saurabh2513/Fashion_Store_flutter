import 'package:ecommerce_app/view/widgets/product_cart.dart';
import 'package:flutter/cupertino.dart';
import 'package:ecommerce_app/models/product.dart';


class ProductGrid extends StatelessWidget {
  const ProductGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(16),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.75,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      itemCount: products.length,
      itemBuilder: (context, index) {
        final product = products[index];
        return GestureDetector(
          onTap: () {},
          child: ProductCart(product: product),
        );
      }
    );
  }
}
