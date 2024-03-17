import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:yoku_web_app/constants/dynalic_values.dart';
import 'package:yoku_web_app/models/image_model.dart';

class CarouseWidget extends StatefulWidget {
  const CarouseWidget({super.key});

  @override
  State<CarouseWidget> createState() => _CarouseWidgetState();
}

class _CarouseWidgetState extends State<CarouseWidget> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
          enlargeStrategy: CenterPageEnlargeStrategy.scale,
          height: responsiveValue(
            context,
            defaultVal: 600,
            tabletVal: 200,
            mobileVal: 400,
            desktopVal: 500,
          ),
          enlargeFactor: 0.8,
          viewportFraction: 3.5,
          animateToClosest: true,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 4),
          autoPlayAnimationDuration: const Duration(milliseconds: 2400),
          autoPlayCurve: Curves.linear,
          aspectRatio: 16 / 9,
          enlargeCenterPage: true),
      items: ImageModel.images
          .map((imageUrl) => Image(
                image: AssetImage(imageUrl.imageUrl),
              ))
          .toList(),
    );
  }
}
