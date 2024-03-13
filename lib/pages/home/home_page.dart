import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:yoku_web_app/constants/dynalic_values.dart';
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
    final height = MediaQuery.of(context).size.height;
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
                      desktopVal: 400),
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
                  title: 'UNA LOCATION \nESCLUSIVA',
                  content:
                      'L\'eleganza e la cura dei particolari sono i tratti distintivi del nostro ristorante. La nostra location ricercata ed esclusiva ed il nostro staff preparato e professionale accompagneranno la vostra esperienza nel migliore dei modi. Tutto questo immerso in una delle zone più importanti della città, un angolo di oriente pronto ad accogliervi',
                ),
                SizedBox(
                  height: responsiveValue(
                    context,
                    defaultVal: 400,
                    tabletVal: 820,
                    mobileVal: 820,
                    desktopVal: 400,
                  ),
                  child: ResponsiveRowColumn(
                    layout: ResponsiveBreakpoints.of(context).isDesktop
                        ? ResponsiveRowColumnType.ROW
                        : ResponsiveRowColumnType.COLUMN,
                    rowMainAxisAlignment: MainAxisAlignment.center,
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
                          content:
                              'La nostra cucina nasce dallo studio e dall \'amore per la cultura Giapponese ed orientale, sotto ogni punto di vista. Nel nostro ristorante la tradizione si sposa alla perfezione con l’innovazione e le influenze di altre culture, portando ad una proposta fusion intrigante ed appagante, perfetta per ogni tipo di palato. Il pesce freschissimo viene manipolato con maestria dai nostri Chef, con lo scopo di conservare il suo sapore naturale e di arricchirlo con combinazioni gustose e sorprendenti.',
                        ),
                      ),
                    ],
                  ),
                ),

              
                Column(
                  children: [
                    HomePictureWidget(
                      heigtContainer: MediaQuery.of(context).size.height,
                      widithContainer: MediaQuery.of(context).size.height * 2,
                      image: 'assets/plate.PNG',
                      imageHeight: 200,
                    ),
                    const SizedBox(height: 50),
                  ],
                ),
                const CarouseWidget(),
                const SizedBox(height: 50),
                const FooterWidget(),
                const SizedBox(
                  height: 50,
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
