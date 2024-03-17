import 'package:flutter/material.dart';
import 'package:yoku_web_app/constants/dynalic_values.dart';

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
              fontSize: responsiveValue(
                context,
                defaultVal: 30,
                tabletVal: 20,
                mobileVal: 15,
                desktopVal: 30,
              ),
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            content,
            style: TextStyle(
              color: Colors.black,
              letterSpacing: 3,
              fontSize: responsiveValue(
                context,
                defaultVal: 16,
                tabletVal: 12,
                mobileVal: 10,
                desktopVal: 16,
              ),
              height: 1.7,
            ),
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            maxLines: 20,
          )
        ],
      ),
    );
  }
}
