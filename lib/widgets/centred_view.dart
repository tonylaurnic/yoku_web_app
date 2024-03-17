import 'package:flutter/material.dart';
import 'package:yoku_web_app/constants/dynalic_values.dart';

class CentredView extends StatelessWidget {
  final Widget? child;
  const CentredView({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: responsiveValue(
          context,
          defaultVal: 0,
          mobileVal: 0,
          tabletVal: 0,
          desktopVal: 50,
        ),
      ),
      alignment: Alignment.topCenter,
      child: ConstrainedBox(
        constraints:
            BoxConstraints(maxWidth: MediaQuery.of(context).size.width),
        child: child,
      ),
    );
  }
}
