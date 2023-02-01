import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yoku_web_app/constants/app_colors.dart';
import 'package:yoku_web_app/router/app_pages.dart';
import 'package:yoku_web_app/widgets/navigation_bar/drower_element.dart';
import 'package:yoku_web_app/widgets/navigation_bar/navbar_logo.dart';

class NavigationBarMobile extends StatelessWidget {
  const NavigationBarMobile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor.withOpacity(0.8),
      height: 120,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          DrowerElement(
            onPressed: () => Get.toNamed(Routes.dialogbox),
          ),
          const NavBarLogo(
            isMobil: true,
          ),
        ],
      ),
    );
  }
}
