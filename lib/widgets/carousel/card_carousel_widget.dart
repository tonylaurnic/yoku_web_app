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
      padding: const EdgeInsets.all(20.0),
      child: SizedBox(
        height: 600,
        width: 1200,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            image.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
