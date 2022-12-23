import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:yoku_web_app/widgets/navigation_bar/navbar_item.dart';
import 'package:yoku_web_app/widgets/navigation_bar/navbar_logo.dart';

class NavigationBarTabletDescktop extends StatelessWidget {
  const NavigationBarTabletDescktop(
      {super.key, this.automaticallyImplyLeading});
  final bool? automaticallyImplyLeading;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: automaticallyImplyLeading!,
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          const NavBarLogo(),
          ScreenTypeLayout(
            mobile: Column(
              // mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                NavBarItem('Chi siamo', onTap: () {}
                    // context.pushNamed(RouteConstants.aboute)
                    //context.push(RouteConstants.aboute),
                    ),
                const SizedBox(
                  height: 2,
                ),
                NavBarItem('Cosa Facciamo!', onTap: () {}),
              ],
            ),
            desktop: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                NavBarItem('Chi siamo', onTap: () {}),
                const SizedBox(
                  width: 5,
                ),
                NavBarItem('Cosa Facciamo!', onTap: () {}),
              ],
            ),
          )
        ],
      ),
    );
  }
}
