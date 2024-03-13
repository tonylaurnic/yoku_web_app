import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:yoku_web_app/constants/dynalic_values.dart';
import 'package:yoku_web_app/models/image_model.dart';
import 'package:yoku_web_app/widgets/carousel/card_carousel_widget.dart';

class CarouseWidget extends StatefulWidget {
  const CarouseWidget({super.key});

  @override
  State<CarouseWidget> createState() => _CarouseWidgetState();
}

class _CarouseWidgetState extends State<CarouseWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CarouselSlider(
          options: CarouselOptions(
              enlargeStrategy: CenterPageEnlargeStrategy.height,
              height: responsiveValue(
                context,
                defaultVal: 400,
                tabletVal: 500,
                mobileVal: 400,
                desktopVal: 400,
              ),
              enlargeFactor: 0.9,
              viewportFraction: 0.9,
              animateToClosest: true,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 4),
              autoPlayAnimationDuration: const Duration(milliseconds: 2400),
              autoPlayCurve: Curves.linear,
              aspectRatio: 16 / 9,
              enlargeCenterPage: true),
          items: ImageModel.images
              .map((imageUrl) => CardcarouselWidget(image: imageUrl))
              .toList(),
        ),
      ],
    );
  }
}
