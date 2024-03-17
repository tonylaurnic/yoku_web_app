import 'package:flutter/material.dart';
import 'package:yoku_web_app/constants/dynalic_values.dart';

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget({
    Key? key,
    required this.text,
    this.onPressed,
    required this.colour,
  }) : super(key: key);

  final String text;
  final Function()? onPressed;
  final Color colour;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Text(
        text.toUpperCase(),
        style: TextStyle(
          fontWeight: FontWeight.w100,
          letterSpacing: responsiveValue(context,
              defaultVal: 3, tabletVal: 16, mobileVal: 12, desktopVal: 30),
          height: 0.9,
          fontSize: responsiveValue(context,
              defaultVal: 16, tabletVal: 20, mobileVal: 12, desktopVal: 30),
          color: colour,
        ),
      ),
    );
  }
}
