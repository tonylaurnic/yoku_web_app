import 'package:flutter/material.dart';
import 'package:yoku_web_app/widgets/navigation_bar/drower_element.dart';
import 'package:yoku_web_app/widgets/navigation_bar/navbar_logo.dart';

class NavigationBarMobile extends StatelessWidget with PreferredSizeWidget {
  const NavigationBarMobile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const <Widget>[
          DrowerElement(),
          NavBarLogo(),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(120.0);
}
