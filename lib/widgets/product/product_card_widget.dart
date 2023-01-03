import 'package:flutter/material.dart';
import 'package:yoku_web_app/models/products_models.dart';

class ProductCardWidget extends StatelessWidget {
  const ProductCardWidget({
    Key? key,
    required this.product,
    required this.index,
  }) : super(key: key);
  final Product product;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 40,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(Product.products[index].name),
              Text(Product.products[index].description),
              Text(Product.products[index].price),
            ],
          ),
        ),
      ),
    );
  }
}
