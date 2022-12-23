import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:yoku_web_app/widgets/centred_view.dart';
import 'package:yoku_web_app/widgets/navigation_bar/navigation_bar.dart';
import 'package:yoku_web_app/widgets/navigation_drawer/navigation_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? const NavigationDrawer(
                isHome: true,
              )
            : null,
        backgroundColor: const Color.fromARGB(255, 202, 194, 166),
        body: CenteredView(
          child: Column(
            children: const [
              MyNavigationBar(),
            ],
          ),
        ),
      ),
    );
  }
}
