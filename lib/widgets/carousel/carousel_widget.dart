import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
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
            height: 600.0,
            viewportFraction: 0.8,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 6),
            autoPlayAnimationDuration: const Duration(seconds: 2),
            autoPlayCurve: Curves.fastOutSlowIn,
            pauseAutoPlayOnTouch: true,
            aspectRatio: 12 / 8,
          ),
          items: ImageModel.images
              .map((imageUrl) => CardcarouselWidget(image: imageUrl))
              .toList(),
        ),
      ],
    );
  }
}
