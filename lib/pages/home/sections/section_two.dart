import 'package:flutter/widgets.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:yoku_web_app/constants/dynalic_values.dart';
import 'package:yoku_web_app/constants/strings_home.dart';
import 'package:yoku_web_app/pages/home/home_page.dart';
import 'package:yoku_web_app/pages/home/sections/section_container.dart';
import 'package:yoku_web_app/widgets/course_widget/details_home_widget.dart';
import 'package:yoku_web_app/widgets/picture_widget/home_picture_widget.dart';

class SectionTwo extends StatelessWidget {
  const SectionTwo({
    super.key,
    required this.controllers,
    required this.heightContainer,
    required ScrollController scrollController,
    required Animation animation,
    required this.width,
  })  : _scrollController = scrollController,
        _animation = animation;

  final List<AnimationController> controllers;
  final double heightContainer;
  final ScrollController _scrollController;
  final Animation _animation;
  final double width;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return SectionContainer(
      height: height,
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
                    opacity:
                        _scrollController.offset > heightContainer * 3 ? 0 : 1,
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
    );
  }
}
