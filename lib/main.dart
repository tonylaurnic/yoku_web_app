import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:yoku_web_app/bindings/category_binding.dart';
import 'package:yoku_web_app/bindings/home_binding.dart';
import 'package:yoku_web_app/bindings/product_bindinbg.dart';
import 'package:yoku_web_app/constants/app_colors.dart';
import 'package:yoku_web_app/router/app_pages.dart';
import 'package:yoku_web_app/translations/app_translations.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  CategoryBinding().dependencies();
  ProductBinding().dependencies();
  HomeBinding().dependencies();

  runApp(const MyApp());

  // await SentryFlutter.init(
  //     (options) => options.dsn = 'https://<key>@sentry.io/<project>',
  //     appRunner: () => runApp(const MyApp()));
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
        fontFamily: "assets/M_PLUS_1p/MPLUS1p-Regular.ttf",
        primaryColor: backgroundColor,
        colorScheme: const ColorScheme.light(
          primary: backgroundColor,
          secondary: backgroundColor,
        ),
      ),
      // Theme.of(context).textTheme.apply(),
      initialRoute: AppPages.initial,
      getPages: AppPages.routes,

      builder: (context, child) {
        return ResponsiveBreakpoints.builder(
          child: child!,
          breakpoints: [
            const Breakpoint(start: 0, end: 450, name: MOBILE),
            const Breakpoint(start: 451, end: 900, name: TABLET),
            const Breakpoint(start: 901, end: double.infinity, name: DESKTOP),
          ],
        );
      },
    );
  }
}
