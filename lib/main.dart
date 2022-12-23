import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart' as strategy;
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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: Theme.of(context).textTheme.apply(fontFamily: 'Open Sans'),
      ),
      routeInformationParser: AppRouter().router.routeInformationParser,
      routerDelegate: AppRouter().router.routerDelegate,
    );
  }
}
