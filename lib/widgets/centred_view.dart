import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CentredView extends StatelessWidget {
  final Widget? child;
  const CentredView({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: Container(
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
        alignment: Alignment.topCenter,
        child: ConstrainedBox(
          constraints:
              BoxConstraints(maxWidth: MediaQuery.of(context).size.width),
          child: child,
        ),
      ),
      desktop: Container(
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
        alignment: Alignment.topCenter,
        child: ConstrainedBox(
          constraints:
              BoxConstraints(maxWidth: MediaQuery.of(context).size.width),
          child: child,
        ),
      ),
    );
  }
}
