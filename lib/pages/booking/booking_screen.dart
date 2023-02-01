import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:yoku_web_app/controllers/home_controller.dart';
import 'package:yoku_web_app/pages/booking/booking_desktop.dart';
import 'package:yoku_web_app/pages/booking/booking_mobile.dart';
import 'package:yoku_web_app/widgets/centred_view.dart';
import 'package:yoku_web_app/widgets/navigation_drawer/navigation_drawer.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => HomeController());
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? const NavigationDrawer(isHome: true)
            : null,
        body: CentredView(
          child: Column(
            children: [
              Expanded(
                child: ScreenTypeLayout(
                  mobile: const BookingMobile(),
                  desktop: const BookingDesktop(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
