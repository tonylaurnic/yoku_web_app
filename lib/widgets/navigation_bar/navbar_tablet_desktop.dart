import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:yoku_web_app/widgets/navigation_bar/drower_element.dart';
import 'package:yoku_web_app/widgets/navigation_bar/navbar_item.dart';
import 'package:yoku_web_app/widgets/navigation_bar/navbar_logo.dart';

class NavigationBarTabletDescktop extends StatelessWidget
    with PreferredSizeWidget {
  const NavigationBarTabletDescktop(
      {super.key, this.automaticallyImplyLeading});
  final bool? automaticallyImplyLeading;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      automaticallyImplyLeading: automaticallyImplyLeading!,
      backgroundColor: Colors.transparent,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          ScreenTypeLayout(
            mobile: Column(
              children: <Widget>[
                NavBarItem('Prenota', onTap: () {}),
              ],
            ),
            desktop: SizedBox(
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 60,
                    width: 100,
                    child: Column(
                      children: const [
                        Text(
                          'Prenota',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w100,
                              fontSize: 25,
                              letterSpacing: 3),
                        ),
                        Divider(
                          thickness: 1,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.3),
                  const NavBarLogo(),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.3),
                  const DrowerElement()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80.0);
}
