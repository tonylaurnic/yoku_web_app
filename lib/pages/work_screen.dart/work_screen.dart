import 'package:flutter/material.dart';
import 'package:yoku_web_app/widgets/centred_view.dart';
import 'package:yoku_web_app/widgets/navigation_bar/nav_bar_widget.dart';

class WorkScreen extends StatelessWidget {
  const WorkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        CentredView(
          child: Column(
            children: [
              Expanded(
                  child: Column(
                children: [],
              )
                  //  ScreenTypeLayout(
                  //   mobile: const HomeContentMobile(),
                  //   desktop: const HomeContentDesktop(),
                  // ),
                  ),
            ],
          ),
        ),
        NavigationBarWidget(),
      ],
    );
  }
}
