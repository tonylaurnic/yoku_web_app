import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:yoku_web_app/widgets/navigation_bar/navbar_mobile.dart';
import 'package:yoku_web_app/widgets/navigation_bar/navbar_tablet_desktop.dart';

class MyNavigationBar extends StatelessWidget {
  const MyNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const NavigationBarMobile(),
      tablet: const NavigationBarTabletDescktop(
        automaticallyImplyLeading: true,
      ),
    );
  }
}
