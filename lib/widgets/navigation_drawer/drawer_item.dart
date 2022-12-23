import 'package:flutter/material.dart';
import 'package:yoku_web_app/widgets/navigation_bar/navbar_item.dart';

class DrawerItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final Function() onTap;
  const DrawerItem(this.title, this.icon, {required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 30, top: 60),
        child: Row(
          children: <Widget>[
            Icon(icon),
            const SizedBox(
              width: 30,
            ),
            NavBarItem(
              title,
              onTap: onTap,
            )
          ],
        ),
      ),
    );
  }
}
