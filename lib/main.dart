import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart' as strategy;
import 'package:yoku_web_app/constants/app_colors.dart';
import 'package:yoku_web_app/router/router.dart';

void main() {
  strategy.usePathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        backgroundColor: backgroundColor,
        textTheme: Theme.of(context).textTheme.apply(fontFamily: 'Julius Sans'),
      ),
      routeInformationParser: AppRouter().router.routeInformationParser,
      routerDelegate: AppRouter().router.routerDelegate,
    );
  }
}
