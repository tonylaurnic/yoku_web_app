import 'package:flutter/material.dart';
import 'package:yoku_web_app/widgets/navigation_bar/nav_bar_widget.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          NavigationBarWidget(),
        ],
      ),
    );
  }
}
