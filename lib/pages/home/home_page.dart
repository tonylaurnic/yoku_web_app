import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:yoku_web_app/constants/dynalic_values.dart';
import 'package:yoku_web_app/constants/strings_home.dart';
import 'package:yoku_web_app/widgets/carousel/carousel_widget.dart';
import 'package:yoku_web_app/widgets/centred_view.dart';
import 'package:yoku_web_app/widgets/course_widget/details_home_widget.dart';
import 'package:yoku_web_app/widgets/footer/footer_widget.dart';
import 'package:yoku_web_app/widgets/navigation_bar/nav_bar_widget.dart';
import 'package:yoku_web_app/widgets/picture_widget/home_picture_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const double heightContainer = 500;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Scrollable(
            axisDirection: AxisDirection.down,
            controller: ScrollController(),
            viewportBuilder: (context, offset) => Container(
              color: Colors.white.withOpacity(0.7),
            ),
          ),
          CentredView(
            child: ListView(
              children: [
                HomePictureWidget(
                  topPadding: 120,
                  heigtContainer: responsiveValue(context,
                      defaultVal: 400,
                      tabletVal: 500,
                      mobileVal: 400,
                      desktopVal: heightContainer),
                  widithContainer: responsiveValue(context,
                      defaultVal: width * 0.4,
                      tabletVal: width * 0.9,
                      mobileVal: width * 0.9,
                      desktopVal: width * 0.4),
                  image: 'assets/output-onlinepngtools-7.png',
                ),
                PresentationDetails(
                  heigtContainer: MediaQuery.of(context).size.height * 0.5,
                  widithContainer: MediaQuery.of(context).size.height * 1.7,
                  title: HomeStrings.title,
                  content: HomeStrings.content_1,
                ),
                SizedBox(
                  height: responsiveValue(
                    context,
                    defaultVal: 400,
                    tabletVal: 820,
                    mobileVal: 820,
                    desktopVal: heightContainer,
                  ),
                  child: ResponsiveRowColumn(
                    layout: ResponsiveBreakpoints.of(context).isDesktop
                        ? ResponsiveRowColumnType.ROW
                        : ResponsiveRowColumnType.COLUMN,
                    rowMainAxisAlignment: MainAxisAlignment.spaceAround,
                    rowCrossAxisAlignment: CrossAxisAlignment.stretch,
                    rowPadding: const EdgeInsets.symmetric(horizontal: 10),
                    children: [
                      ResponsiveRowColumnItem(
                        rowFit: FlexFit.loose,
                        child: HomePictureWidget(
                          heigtContainer: responsiveValue(
                            context,
                            defaultVal: 1200,
                            tabletVal: 400,
                            mobileVal: 400,
                            desktopVal: 400,
                          ),
                          widithContainer: responsiveValue(
                            context,
                            defaultVal: width * 0.4,
                            tabletVal: width * 0.9,
                            mobileVal: width * 0.9,
                          ),
                          image: 'assets/logo_fish.PNG',
                        ),
                      ),
                      ResponsiveRowColumnItem(
                        child: PresentationDetails(
                          heigtContainer: responsiveValue(
                            context,
                            defaultVal: 1200,
                            tabletVal: 400,
                            mobileVal: 400,
                            desktopVal: 400,
                          ),
                          widithContainer: responsiveValue(
                            context,
                            defaultVal: width * 0.9,
                            tabletVal: width * 0.9,
                            mobileVal: width * 0.9,
                            desktopVal: width * 0.4,
                          ),
                          title: 'UNA CUCINA \nINNOVATIVA',
                          content: HomeStrings.content_2,
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    HomePictureWidget(
                      heigtContainer: responsiveValue(context,
                          defaultVal: 400,
                          tabletVal: 400,
                          mobileVal: 400,
                          desktopVal:
                              heightContainer), // MediaQuery.of(context).size.height * 0.5,
                      widithContainer: width,
                      image: 'assets/menu.jpg',

                      imageHeight: 100,
                    ),
                    SizedBox(
                      height: responsiveValue(
                        context,
                        defaultVal: 20,
                        mobileVal: 20,
                        tabletVal: 20,
                        desktopVal: 50,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const CarouseWidget(),
                const SizedBox(
                  height: 20,
                ),
                const FooterWidget(),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          const Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: NavigationBarWidget(),
          ),
        ],
      ),
    );
  }
}
