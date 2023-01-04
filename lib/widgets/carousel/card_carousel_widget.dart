import 'package:flutter/material.dart';

import 'package:yoku_web_app/models/image_model.dart';

class CardcarouselWidget extends StatelessWidget {
  const CardcarouselWidget({
    Key? key,
    required this.image,
  }) : super(key: key);
  final ImageModel image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: SizedBox(
        height: 400,
        width: 800,
        child: Image.asset(
          image.imageUrl,
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}
