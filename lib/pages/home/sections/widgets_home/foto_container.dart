import 'package:flutter/widgets.dart';
import 'package:yoku_web_app/constants/dynalic_values.dart';


class FotoContainer extends StatelessWidget {
  final Widget child;

  const FotoContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = responsiveValue(
      context,
      defaultVal: 200,
      mobileVal: 250,
      tabletVal: 250,
      desktopVal: 400,
    );
    final double width = responsiveValue(
      context,
      defaultVal: 200,
      mobileVal: 300,
      tabletVal: 600,
      desktopVal: 600,
    );
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: responsiveValue(
          context,
          defaultVal: 40,
          mobileVal: 10,
          tabletVal: 12,
          desktopVal: 20,
        ),
        vertical: responsiveValue(
          context,
          defaultVal: 40,
          mobileVal: 10,
          tabletVal: 12,
          desktopVal: 20,
        ),
      ),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          bottomRight: Radius.circular(24),
        ),
      ),
      constraints: BoxConstraints(
        maxHeight: height,
        maxWidth: width,
      ),
      child: child,
    );
  }
}
