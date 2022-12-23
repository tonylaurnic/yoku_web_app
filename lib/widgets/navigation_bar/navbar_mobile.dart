import 'package:flutter/material.dart';
import 'package:yoku_web_app/widgets/navigation_bar/navbar_logo.dart';

class NavigationBarMobile extends StatelessWidget with PreferredSizeWidget {
  const NavigationBarMobile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconTheme.of(context).copyWith(color: Colors.black),
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: SizedBox(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const <Widget>[
            NavBarLogo(),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100.0);
}
