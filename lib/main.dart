import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart' as strategy;
import 'package:get/get.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:yoku_web_app/constants/app_colors.dart';
import 'package:yoku_web_app/controllers/category_controller.dart';
import 'package:yoku_web_app/controllers/home_controller.dart';
import 'package:yoku_web_app/controllers/product_controller.dart';
import 'package:yoku_web_app/router/app_pages.dart';
import 'package:yoku_web_app/translations/app_translations.dart';

Future<void> main() async {
  strategy.usePathUrlStrategy();

  Get.put(ProductController());
  Get.put(CategoryController());
  Get.put(HomeController);

  await SentryFlutter.init(
      (options) => options.dsn = 'https://<key>@sentry.io/<project>',
      appRunner: () => runApp(const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translationsKeys: AppTranslation.translationsKeys,
      locale: Get.deviceLocale,
      fallbackLocale: const Locale('it', 'IT'),
      defaultTransition: Transition.fade,
      debugShowCheckedModeBanner: false,
      title: 'Yoku Sushi',
      theme: ThemeData(
        backgroundColor: backgroundColor,
        fontFamily: "M_PLUS_1p",
        primaryColor: backgroundColor,
      ),
      // Theme.of(context).textTheme.apply(),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}
