import 'package:flutter/material.dart';
import 'package:yoku_web_app/constants/dynalic_values.dart';

class SectionContainer extends StatelessWidget {
  final Widget child;
  final double height;
  final Color? coulor;
  final Decoration? decoration;
  const SectionContainer({
    Key? key,
    required this.child,
    required this.height,
    this.coulor,
    this.decoration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      color: coulor,
      child: Container(
        // margin: EdgeInsets.symmetric(
        //   horizontal: responsiveValue(
        //     context,
        //     defaultVal: 40,
        //     mobileVal: 30,
        //     tabletVal: 30,
        //     desktopVal: 60,
        //   ),
        //   vertical: responsiveValue(
        //     context,
        //     defaultVal: 80,
        //     mobileVal: 20,
        //     tabletVal: 30,
        //     desktopVal: 60,
        //   ),
        // ),
        decoration: decoration,
        child: child,
      ),
    );
  }
}
