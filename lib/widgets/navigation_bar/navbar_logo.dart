import 'package:flutter/material.dart';

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({
    super.key,
    this.isMobil = false,
  });
  final bool isMobil;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30.0,
        vertical: 10,
      ),
      child: SizedBox(
        height: isMobil ? 70 : 100,
        child: Image.asset(
          'assets/logo_app.png',
          color: Colors.black,
        ),
      ),
    );
  }
}
