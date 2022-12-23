import 'package:flutter/material.dart';
import 'package:yoku_web_app/widgets/navigation_drawer/drawer_item.dart';
import 'package:yoku_web_app/widgets/navigation_drawer/navigation_drawer_header.dart';

class NavigationDrawer extends StatelessWidget {
  final bool isHome;
  const NavigationDrawer({
    Key? key,
    this.isHome = false,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 16),
        ],
      ),
      child: Column(
        children: <Widget>[
          const NavigationDrawerHeader(),
          DrawerItem('Chi siamo', Icons.videocam, onTap: () {}),
          DrawerItem(
            'Cosa facciamo!',
            Icons.help,
            onTap: () {},
          ),
          DrawerItem(
            isHome ? 'Vai allaHome' : 'Vai alla home ',
            Icons.home,
            onTap: () {},
          )
        ],
      ),
    );
  }
}
