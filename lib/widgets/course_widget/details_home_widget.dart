import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class PresentationDetails extends StatelessWidget {
  const PresentationDetails({
    Key? key,
    required this.title,
    required this.content,
    required this.heigtContainer,
    required this.widithContainer,
  }) : super(key: key);
  final String title;
  final String content;
  final double heigtContainer;
  final double widithContainer;

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
                ? 14
                : 20;

        return Container(
          padding: const EdgeInsets.all(5),
          width: widithContainer,
          height: heigtContainer,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                title,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w100,
                  height: 1.2,
                  fontSize: titleSize,
                ),
                textAlign: textAlingment,
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                content,
                style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 3,
                  fontSize: descriptionSize,
                  height: 1.7,
                ),
                textAlign: textAlingment,
              )
            ],
          ),
        );
      },
    );
  }
}
