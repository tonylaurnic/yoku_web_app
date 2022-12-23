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
      child: Center(
        child: SizedBox(
          height: 60,
          width: 100,
          child: Column(
            children: [
              Text(
                title!,
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w100,
                    fontSize: 25,
                    letterSpacing: 3),
              ),
              // const Divider(
              //   thickness: 1,
              //   color: Colors.black,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
