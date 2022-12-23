import 'package:flutter/material.dart';

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: Image.asset(
        'images/logo_app.png',
        color: Colors.black,
      ),
    );
  }
}
