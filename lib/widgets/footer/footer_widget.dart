import 'package:flutter/material.dart';
import 'package:yoku_web_app/constants/app_colors.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: 1800,
      color: backgroundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
              color: Colors.amber,
              height: MediaQuery.of(context).size.height * 0.25,
              width: 1800,
              child: const Text('This is the footter')),
        ],
      ),
    );
  }
}
