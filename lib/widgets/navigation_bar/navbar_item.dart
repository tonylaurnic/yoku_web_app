import 'package:flutter/material.dart';

class NavBarItem extends StatelessWidget {
  final String? title;
  final Function() onTap;

  const NavBarItem(
    this.title, {
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 140,
        height: 30,
        padding: const EdgeInsets.all(3),
        decoration: const BoxDecoration(
          color: Colors.grey,
        ),
        child: Center(
          child: Text(
            title!,
            style: const TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
