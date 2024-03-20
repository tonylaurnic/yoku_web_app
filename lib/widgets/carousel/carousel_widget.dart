import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:yoku_web_app/models/image_model.dart';

class CarouseWidget extends StatelessWidget {
  const CarouseWidget({
    Key? key,
    required this.containerHeight,
    required this.containerWidth,
  }) : super(key: key);

  final double containerHeight;
  final double containerWidth;

  @override
  Widget build(BuildContext context) {
    final List imagemodel = ImageModel.images;
    return SizedBox(
      width: containerWidth,
      height: containerHeight,
      child: CarouselSlider.builder(
        itemCount: imagemodel.length,
        options: CarouselOptions(
          autoPlay: true,
          aspectRatio: 2.0,
          enlargeCenterPage: true,
        ),
        itemBuilder: (context, index, realIdx) {
          return Center(
              child: Image.asset(
            imagemodel[index].imageUrl,
            fit: BoxFit.cover,
          ));
        },
      ),
    );

    // CarouselSlider(
    //   disableGesture: true,
    //   options: CarouselOptions(
    //       enlargeStrategy: CenterPageEnlargeStrategy.scale,
    //       height: responsiveValue(
    //         context,
    //         defaultVal: 600,
    //         tabletVal: 200,
    //         mobileVal: 400,
    //         desktopVal: 500,
    //       ),
    //       enlargeFactor: 1.8,
    //       viewportFraction: 1.1,
    //       animateToClosest: true,
    //       autoPlay: true,
    //       autoPlayInterval: const Duration(seconds: 4),
    //       autoPlayAnimationDuration: const Duration(milliseconds: 2400),
    //       autoPlayCurve: Curves.linear,
    //       aspectRatio: 16 / 9,
    //       enlargeCenterPage: true),
    //   items: ImageModel.images
    //       .map(
    //         (imageUrl) => Image(
    //           image: AssetImage(
    //             imageUrl.imageUrl,
    //           ),
    //         ),
    //       )
    //       .toList(),
    // );
  }
}
