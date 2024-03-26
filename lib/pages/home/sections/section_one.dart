import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:yoku_web_app/constants/strings_home.dart';
import 'package:yoku_web_app/pages/home/home_page.dart';
import 'package:yoku_web_app/pages/home/sections/section_container.dart';
import 'package:yoku_web_app/widgets/course_widget/details_home_widget.dart';

class SectionOne extends StatefulWidget {
  final bool firstTime;
  final ScrollController? scrollController;
  const SectionOne({
    Key? key,
    required this.firstTime,
    this.scrollController,
  }) : super(key: key);
  @override
  State<SectionOne> createState() => _SectionOneState();
}

class _SectionOneState extends State<SectionOne>
    with SingleTickerProviderStateMixin {
  late Animation _animation;
  late AnimationController _animationController;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..addListener(() => setState(() {}));
    _animation = CurvedAnimation(
      curve: Curves.easeOutCubic,
      parent: _animationController,
    );
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SectionContainer(
      height: height,
      child: WhenShownListener(
        onWidgetShown: () => _animationController.forward(),
        initOffset: 0,
        child: ResponsiveRowColumn(
          layout: ResponsiveBreakpoints.of(context).isDesktop
              ? ResponsiveRowColumnType.ROW
              : ResponsiveRowColumnType.COLUMN,
          rowMainAxisAlignment: MainAxisAlignment.spaceAround,
          rowCrossAxisAlignment: CrossAxisAlignment.stretch,
          rowPadding: const EdgeInsets.symmetric(horizontal: 10),
          children: [
            ResponsiveRowColumnItem(
              rowOrder: 2,
              rowFit: FlexFit.loose,
              child: AnimatedBuilder(
                animation: widget.scrollController!,
                builder: (context, child) {
                  return Transform.translate(
                    offset: widget.firstTime
                        ? Offset(0, (1 - _animation.value) * height * 0.25)
                        : const Offset(0, 0),
                    child: child,
                  );
                },
                child: AnimatedOpacity(
                  opacity: widget.firstTime ? _animation.value : 1,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                  child: Center(
                    child: Image.asset(
                      'assets/output-onlinepngtools-7.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            ResponsiveRowColumnItem(
              rowOrder: 1,
              rowFit: FlexFit.loose,
              child: AnimatedBuilder(
                animation: widget.scrollController!,
                builder: (context, child) {
                  return AnimatedOpacity(
                    opacity: widget.firstTime
                        ? _animation.value
                        : 1 - _animation.value,
                    duration: const Duration(seconds: 1),
                    child: child,
                  );
                },
                child: const PresentationDetails(
                  title: HomeStrings.title,
                  content: HomeStrings.content_1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
