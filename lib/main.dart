import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart' as strategy;
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:yoku_web_app/constants/app_colors.dart';
import 'package:yoku_web_app/router/router.dart';

Future<void> main() async {
  strategy.usePathUrlStrategy();

  await SentryFlutter.init(
      (options) => options.dsn = 'https://<key>@sentry.io/<project>',
      appRunner: () => runApp(const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Yoku Sushi',
      theme: ThemeData(
        backgroundColor: backgroundColor,
        fontFamily: "MPLUS1p",

        // Theme.of(context).textTheme.apply(),
      ),
      routeInformationParser: AppRouter().router.routeInformationParser,
      routerDelegate: AppRouter().router.routerDelegate,
    );
  }
}
