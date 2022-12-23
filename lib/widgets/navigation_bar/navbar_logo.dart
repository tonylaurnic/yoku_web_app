import 'package:flutter/material.dart';

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      width: 250,
      child: Image.asset(
        'assets/logo5.png',
      ),
    );
  }
}
