import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
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
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? const NavigationDrawer(isHome: true)
            : null,
        body: CenteredView(
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
