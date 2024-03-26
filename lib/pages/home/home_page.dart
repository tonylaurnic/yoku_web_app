import 'package:flutter/material.dart';
import 'package:yoku_web_app/pages/home/sections/section_one.dart';
import 'package:yoku_web_app/pages/home/sections/section_three.dart';
import 'package:yoku_web_app/pages/home/sections/section_two.dart';
import 'package:yoku_web_app/widgets/carousel/carousel_widget.dart';
import 'package:yoku_web_app/widgets/centred_view.dart';
import 'package:yoku_web_app/widgets/footer/footer_widget.dart';
import 'package:yoku_web_app/widgets/navigation_bar/nav_bar_widget.dart';

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
                const SizedBox(height: heightContainer),
                SectionOne(
                  firstTime: widgetBooleans[0],
                  scrollController: _scrollController,
                ),
                SectionTwo(
                  controllers: controllers,
                  heightContainer: heightContainer,
                  scrollController: _scrollController,
                  animation: _animation,
                  width: width,
                ),
                SectionThree(
                  controllers: controllers,
                  scrollController: _scrollController,
                  widgetBooleans: widgetBooleans,
                  heightContainer: heightContainer,
                  width: width,
                ),
                const SizedBox(height: 40),
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
