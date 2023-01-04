import 'package:flutter/material.dart';

class HomePictureWidget extends StatelessWidget {
  const HomePictureWidget({
    Key? key,
    required this.image,
    required this.heigtContainer,
    required this.widithContainer,
    this.imageHeight,
    this.topPadding = 0,
  }) : super(key: key);

  final String image;
  final double heigtContainer;
  final double widithContainer;
  final double? imageHeight;
  final double topPadding;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: topPadding,
      ),
      decoration: const BoxDecoration(
          // borderRadius: BorderRadius.circular(12),
          ),
      height: heigtContainer,
      width: widithContainer,
      child: ClipRRect(
        // borderRadius: BorderRadius.circular(12),
        child: Image.asset(
          image,
          height: imageHeight,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
