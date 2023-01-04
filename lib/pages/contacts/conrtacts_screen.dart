import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:yoku_web_app/widgets/centred_view.dart';
import 'package:yoku_web_app/widgets/navigation_bar/navigation_bar.dart';
import 'package:yoku_web_app/widgets/navigation_drawer/navigation_drawer.dart';

class ContactsScreen extends StatelessWidget {
  const ContactsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        extendBodyBehindAppBar: true,
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? const NavigationDrawer(isHome: true)
            : null,
        backgroundColor: Colors.white.withOpacity(0.7),
        body: Stack(
          children: [
            CentredView(
              child: Column(
                children: [
                  Expanded(
                      child: Column(
                    children: const [],
                  )
                      //  ScreenTypeLayout(
                      //   mobile: const HomeContentMobile(),
                      //   desktop: const HomeContentDesktop(),
                      // ),
                      ),
                ],
              ),
            ),
            const MyNavigationBar(),
          ],
        ),
      ),
    );
  }
}
