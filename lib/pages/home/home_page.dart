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

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late final ScrollController _scrollController = ScrollController();
  late Animation _animation;
  late AnimationController _animationController;
  final bool firstTime = false;

  List<bool> widgetBooleans = [true, true, true, true];
  List<AnimationController> controllers = [];

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
    )..forward();

    _animation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeIn,
      ),
    );

    for (int i = 0; i < widgetBooleans.length; i++) {
      AnimationController controller = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 2),
      );

      controller.addStatusListener((status) {
        if (status == AnimationStatus.dismissed) {
          // When animation is dismissed, start the next animation
          if (i < widgetBooleans.length - 1) {
            controllers[i + 1].forward();
          }
        }
      });

      controllers.add(controller);
    }

    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const double heightContainer = 700;

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
              controller: _scrollController,
              children: [
                WhenShownListener(
                  onWidgetShown: () => controllers[0].forward(),
                  initOffset: 100,
                  child: AnimatedBuilder(
                    animation: _scrollController,
                    builder: (context, child) {
                      return AnimatedOpacity(
                        opacity: widgetBooleans[1] ? _animation.value : 1,
                        duration: const Duration(seconds: 1),
                        child: child,
                      );
                    },
                    child: HomePictureWidget(
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
                  ),
                ),
                WhenShownListener(
                  onWidgetShown: () => controllers[1].forward(),
                  initOffset: 100,
                  child: AnimatedBuilder(
                    animation: _scrollController,
                    builder: (context, child) {
                      return AnimatedOpacity(
                        opacity:
                            _scrollController.offset > heightContainer ? 0 : 1,
                        duration: const Duration(seconds: 1),
                        child: child,
                      );
                    },
                    child: PresentationDetails(
                      heigtContainer: MediaQuery.of(context).size.height * 0.5,
                      widithContainer: MediaQuery.of(context).size.height * 1.7,
                      title: HomeStrings.title,
                      content: HomeStrings.content_1,
                    ),
                  ),
                ),
                WhenShownListener(
                  onWidgetShown: () => controllers[2].forward(),
                  initOffset: 0,
                  child: SizedBox(
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
                          child: AnimatedBuilder(
                            animation: _scrollController,
                            builder: (context, child) {
                              return Transform.translate(
                                offset: Offset(
                                  (_animation.value - 1) * width * 0.5,
                                  0,
                                ),
                                child: child,
                              );
                            },
                            child: AnimatedBuilder(
                              animation: _scrollController,
                              builder: (context, child) {
                                return AnimatedOpacity(
                                  opacity: _scrollController.offset >
                                          heightContainer * 3
                                      ? 0
                                      : 1,
                                  duration: const Duration(seconds: 1),
                                  child: child,
                                );
                              },
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
                          ),
                        ),
                        ResponsiveRowColumnItem(
                          child: AnimatedBuilder(
                            animation: _scrollController,
                            builder: (context, child) {
                              return Transform.translate(
                                offset: Offset(
                                  (1 - _animation.value) * width * 0.5,
                                  0,
                                ),
                                child: child,
                              );
                            },
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
                        ),
                      ],
                    ),
                  ),
                ),
                WhenShownListener(
                  onWidgetShown: () => controllers[3].forward(),
                  initOffset: 0,
                  child: AnimatedBuilder(
                    animation: _scrollController,
                    builder: (context, child) {
                      return AnimatedOpacity(
                        opacity: widgetBooleans[3]
                            ? _scrollController.offset > heightContainer * 2
                                ? 1
                                : 0
                            : 1,
                        duration: const Duration(seconds: 3),
                        child: child,
                      );
                    },
                    child: HomePictureWidget(
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
                  ),
                ),
                const SizedBox(height: 20),
                const SizedBox(height: 20),
                CarouseWidget(
                  containerHeight: heightContainer * 0.5,
                  containerWidth: width * 0.4,
                ),
                const SizedBox(height: 20),
                const FooterWidget(),
                const SizedBox(height: 20),
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

class WhenShownListener extends StatefulWidget {
  final VoidCallback onWidgetShown;

  final Widget child;
  final double initOffset;

  const WhenShownListener({
    Key? key,
    required this.onWidgetShown,
    required this.child,
    required this.initOffset,
  }) : super(key: key);

  @override
  State<WhenShownListener> createState() => _WhenShownListenerState();
}

class _WhenShownListenerState extends State<WhenShownListener> {
  bool hasEmitted = false;

  @override
  Widget build(BuildContext context) {
    final renderObject = context.findRenderObject() as RenderBox?;
    final offsetY = renderObject?.localToGlobal(Offset.zero).dy ?? 0;

    final deviceHeight = MediaQuery.of(context).size.height;
    if (renderObject != null &&
        offsetY < deviceHeight - widget.initOffset &&
        !hasEmitted) {
      hasEmitted = true;

      widget.onWidgetShown();
    }

    return widget.child;
  }
}
