import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:yoku_web_app/constants/app_colors.dart';
import 'package:yoku_web_app/pages/home/home_content_desktop.dart';
import 'package:yoku_web_app/pages/home/home_content_mobile.dart';
import 'package:yoku_web_app/widgets/centred_view.dart';
import 'package:yoku_web_app/widgets/navigation_bar/navigation_bar.dart';

import 'package:yoku_web_app/widgets/navigation_drawer/navigation_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        extendBodyBehindAppBar: true,
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? const NavigationDrawer(isHome: true)
            : null,
        backgroundColor: backgroundColor,
        body: CenteredView(
          child: Column(children: [
            const MyNavigationBar(),
            Expanded(
              child: ScreenTypeLayout(
                mobile: const HomeContentMobile(),
                desktop: const HomeContentDesktop(),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
