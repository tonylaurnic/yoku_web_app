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
    // return  SizedBox(
    //     height: 80,
    //     child: Padding(
    //       padding: const EdgeInsets.all(8.0),
    //       child: Row(
    //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //         children: [
    //           Expanded(
    //             child: Column(
    //               crossAxisAlignment: CrossAxisAlignment.start,
    //               children: [
    //                 Text(
    //                   product.name,
    //                   style: const TextStyle(
    //                     fontSize: 14,
    //                     fontWeight: FontWeight.w700,
    //                   ),
    //                 ),
    //                 Text(
    //                   maxLines: 3,
    //                   overflow: TextOverflow.fade,
    //                   product.description,
    //                   style: const TextStyle(
    //                     fontSize: 12,
    //                     fontStyle: FontStyle.italic,
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //           Text(
    //             '€ ${product.price.toStringAsFixed(2)}',
    //             style: const TextStyle(
    //               fontSize: 14,
    //               fontWeight: FontWeight.w700,
    //             ),
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
      //desktop
    return SizedBox(
        height: 60,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                product.name,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Flexible(
                child: Column(
                  children: [
                    Text(
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      product.description,
                      style: const TextStyle(
                          fontSize: 14, fontStyle: FontStyle.italic),
                    ),
                  ],
                ),
              ),
              Text(
                '€ ${product.price.toStringAsFixed(2)}',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      
    );
  }
}
