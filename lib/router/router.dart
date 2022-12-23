import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:yoku_web_app/pages/home_page.dart';
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
        // GoRoute(
        //   name: RouteConstants.login,
        //   path: '/login',
        //   builder: (context, state) {
        //     return const LoginView();
        //   },
        // ),
        // GoRoute(
        //   name: RouteConstants.signup,
        //   path: '/signup',
        //   builder: (context, state) {
        //     return const SignupView();
        //   },
        // ),
        // GoRoute(
        //   name: RouteConstants.aboute,
        //   path: '/aboute',
        //   builder: (context, state) {
        //     return const AbouteView();
        //   },
        // ),
        // GoRoute(
        //   name: RouteConstants.video,
        //   path: '/video',
        //   builder: (context, state) {
        //     return const VideoListView();
        //   },
        // ),
        // GoRoute(
        //   name: RouteConstants.player,
        //   path: '/player/:id',
        //   builder: (context, state) {
        //     return VideoPlayerView(id: state.params['id']!);
        //   },
        // ),
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
