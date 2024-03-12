import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

responsiveValue(
  BuildContext context, {

  required double defaultVal,
  double? tabletVal,
  double? desktopVal,
  double? mobileVal,
}) {
  return ResponsiveValue(
    context,
    defaultValue: defaultVal,
    conditionalValues: [
      Condition.equals(
        name: MOBILE,
        value: mobileVal,
      ),
      Condition.largerThan(
        name: MOBILE,
        value: tabletVal,
      ),
      Condition.largerThan(
        name: TABLET,
        value: desktopVal,
      )
    ],
  ).value;
}
