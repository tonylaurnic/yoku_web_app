import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

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
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        var textAlingment =
            sizingInformation.deviceScreenType == DeviceScreenType.desktop
                ? TextAlign.center
                : TextAlign.center;

        double titleSize =
            sizingInformation.deviceScreenType == DeviceScreenType.mobile
                ? 30
                : 50;
        double descriptionSize =
            sizingInformation.deviceScreenType == DeviceScreenType.mobile
                ? 16
                : 30;
        double spacingSize =
            sizingInformation.deviceScreenType == DeviceScreenType.mobile
                ? 13
                : 17;

        return GestureDetector(
          onTap: onPressed,
          child: Text(
            text.toUpperCase(),
            style: TextStyle(
                letterSpacing: spacingSize,
                height: 0.9,
                fontSize: descriptionSize,
                color: colour),
          ),
        );
      },
    );
  }
}
