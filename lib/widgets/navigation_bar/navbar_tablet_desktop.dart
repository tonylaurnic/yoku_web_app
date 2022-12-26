import 'package:flutter/material.dart';
import 'package:yoku_web_app/widgets/navigation_bar/drower_element.dart';
import 'package:yoku_web_app/widgets/navigation_bar/navbar_item.dart';
import 'package:yoku_web_app/widgets/navigation_bar/navbar_logo.dart';

class NavigationBarTabletDescktop extends StatelessWidget {
  const NavigationBarTabletDescktop(
      {super.key, this.automaticallyImplyLeading});

  final bool? automaticallyImplyLeading;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          color: Colors.white.withOpacity(0.9),
          height: 120,
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NavBarItem('PRENOTA', onTap: () {}),
              const NavBarLogo(),
              const DrowerElement(),
            ],
          ),
        ),
      ],
    );
  }
}
