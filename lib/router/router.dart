import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:yoku_web_app/pages/booking/booking_screen.dart';
import 'package:yoku_web_app/pages/contacts/contacts_screen.dart';
import 'package:yoku_web_app/pages/dialog_box/dialog_box.dart';
import 'package:yoku_web_app/pages/home/home_page.dart';
import 'package:yoku_web_app/pages/menu/menu_screen.dart';
import 'package:yoku_web_app/pages/pfilosophy/phylosphy_screen.dart';
import 'package:yoku_web_app/pages/work_screen.dart/work_screen.dart';
import 'package:yoku_web_app/router/route_constants.dart';

class AppRouter {
  GoRouter router = GoRouter(
      debugLogDiagnostics: true,
      routes: [
        GoRoute(
          name: RouteConstants.home,
          path: '/',
          builder: (context, state) => const HomePage(),
          // parentNavigatorKey: state.
        ),
        GoRoute(
          name: RouteConstants.dialogbox,
          path: '/dialog-box',
          builder: (context, state) {
            return const DialogBoxScreen();
          },
        ),
        GoRoute(
          name: RouteConstants.booking,
          path: '/booking',
          builder: (context, state) {
            return const BookingScreen();
          },
        ),
        GoRoute(
          name: RouteConstants.menu,
          path: '/menu',
          builder: (context, state) {
            return const MenuScreen();
          },
        ),
        GoRoute(
          name: RouteConstants.philosophy,
          path: '/philosophy',
          builder: (context, state) {
            return const PhilosophyScreen();
          },
        ),
        GoRoute(
          name: RouteConstants.work,
          path: '/work',
          builder: (context, state) {
            return const WorkScreen();
          },
        ),
        GoRoute(
          name: RouteConstants.contacts,
          path: '/contacts',
          builder: (context, state) {
            return const ContactsScreen();
          },
        ),
      ],
      redirect: (context, state) {
        bool isAuthenticated = true;
        // ignore: dead_code
        if (!isAuthenticated && state.subloc == '/') {
          return RouteConstants.home;
        }
        return null;
      },
      errorBuilder: (context, state) =>
          ScaffoldMessenger(child: Center(child: Text(' ${state.error}'))));
}
