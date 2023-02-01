import 'package:get/get.dart';
import 'package:yoku_web_app/bindings/home_binding.dart';
import 'package:yoku_web_app/pages/booking/booking_screen.dart';
import 'package:yoku_web_app/pages/contacts/contacts_screen.dart';
import 'package:yoku_web_app/pages/dialog_box/dialog_box.dart';
import 'package:yoku_web_app/pages/home/home_page.dart';
import 'package:yoku_web_app/pages/menu/menu_screen.dart';
import 'package:yoku_web_app/pages/pfilosophy/phylosphy_screen.dart';
import 'package:yoku_web_app/pages/work_screen.dart/work_screen.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.home;

  static final routes = [
    GetPage(
      name: _Paths.home,
      page: () => const HomePage(),
    ),
    GetPage(
      name: _Paths.dialogbox,
      page: () => const DialogBoxScreen(),
    ),
    GetPage(
      name: _Paths.contacts,
      page: () => const ContactsScreen(),
    ),
    GetPage(
      name: _Paths.dialogbox,
      page: () => const DialogBoxScreen(),
    ),
    GetPage(
      name: _Paths.menu,
      page: () => const MenuScreen(),
    ),
    GetPage(
      name: _Paths.booking,
      page: () => const BookingScreen(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.philosophy,
      page: () => const PhilosophyScreen(),
    ),
    GetPage(
      name: _Paths.work,
      page: () => const WorkScreen(),
    ),
  ];
}
