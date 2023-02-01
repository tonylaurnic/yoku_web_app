part of 'app_pages.dart';

abstract class Routes {
  Routes._();

  static const home = _Paths.home;
  static const dialogbox = _Paths.dialogbox;
  static const booking = _Paths.booking;
  static const menu = _Paths.menu;
  static const contacts = _Paths.contacts;
  static const work = _Paths.work;
  static const philosophy = _Paths.philosophy;
}

abstract class _Paths {
  static const String home = '/';
  static const String dialogbox = '/dialog-box';
  static const String booking = '/booking';
  static const String menu = '/menu';
  static const String contacts = '/contacts';
  static const String work = '/work';
  static const String philosophy = '/philosophy';
}


// class AppRouter {
//   GoRouter router = GoRouter(
//       debugLogDiagnostics: true,
//       routes: [
//         GoRoute(
//           name: RouteConstants.home,
//           path: '/',
//           builder: (context, state) => const HomePage(),
//           // parentNavigatorKey: state.
//         ),
//         GoRoute(
//           name: RouteConstants.dialogbox,
//           path: '/dialog-box',
//           builder: (context, state) {
//             return const DialogBoxScreen();
//           },
//         ),
//         GoRoute(
//           name: RouteConstants.booking,
//           path: '/booking',
//           builder: (context, state) {
//             return const BookingScreen();
//           },
//         ),
//         GoRoute(
//           name: RouteConstants.menu,
//           path: '/menu',
//           builder: (context, state) {
//             return const MenuScreen();
//           },
//         ),
//         GoRoute(
//           name: RouteConstants.philosophy,
//           path: '/philosophy',
//           builder: (context, state) {
//             return const PhilosophyScreen();
//           },
//         ),
//         GoRoute(
//           name: RouteConstants.work,
//           path: '/work',
//           builder: (context, state) {
//             return const WorkScreen();
//           },
//         ),
//         GoRoute(
//           name: RouteConstants.contacts,
//           path: '/contacts',
//           builder: (context, state) {
//             return const ContactsScreen();
//           },
//         ),
//       ],
//       redirect: (context, state) {
//         bool isAuthenticated = true;
//         // ignore: dead_code
//         if (!isAuthenticated && state.subloc == '/') {
//           return RouteConstants.home;
//         }
//         return null;
//       },
//       errorBuilder: (context, state) =>
//           ScaffoldMessenger(child: Center(child: Text(' ${state.error}'))));
// }
