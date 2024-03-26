import 'package:flutter/widgets.dart';
import 'package:yoku_web_app/constants/dynalic_values.dart';
import 'package:yoku_web_app/pages/home/home_page.dart';
import 'package:yoku_web_app/widgets/picture_widget/home_picture_widget.dart';

class SectionThree extends StatelessWidget {
  const SectionThree({
    super.key,
    required this.controllers,
    required ScrollController scrollController,
    required this.widgetBooleans,
    required this.heightContainer,
    required this.width,
  }) : _scrollController = scrollController;

  final List<AnimationController> controllers;
  final ScrollController _scrollController;
  final List<bool> widgetBooleans;
  final double heightContainer;
  final double width;

  @override
  Widget build(BuildContext context) {
    return WhenShownListener(
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
    );
  }
}