import 'package:flutter/material.dart';
import 'package:yoku_web_app/constants/dynalic_values.dart';

class TextContainer extends StatelessWidget {
  final Widget child;
  final Color colour;
  const TextContainer({
    Key? key,
    required this.colour,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: responsiveValue(
          context,
          defaultVal: 40,
          mobileVal: 1,
          tabletVal: 12,
          desktopVal: 20,
        ),
        vertical: responsiveValue(
          context,
          defaultVal: 40,
          mobileVal: 1,
          tabletVal: 5,
          desktopVal: 20,
        ),
      ),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(24),
          bottomRight: Radius.circular(24),
        ),
      ),
      height: responsiveValue(
        context,
        defaultVal: 200,
        mobileVal: 440,
        tabletVal: 440,
        desktopVal: 400,
      ),
      width: responsiveValue(
        context,
        defaultVal: 200,
        mobileVal: 300,
        tabletVal: 600,
        desktopVal: 600,
      ),
      child: child,
    );
  }
}
