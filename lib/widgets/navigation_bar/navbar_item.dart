import 'package:flutter/material.dart';

class NavBarItem extends StatefulWidget {
  final String? title;
  final Function() onTap;

  const NavBarItem(
    this.title, {
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  State<NavBarItem> createState() => _NavBarItemState();
}

class _NavBarItemState extends State<NavBarItem> {
  bool isHovered = false;
  void onEntered(bool isHovered) {
    setState(() {
      this.isHovered = isHovered;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => onEntered(true),
      onExit: (_) => onEntered(false),
      child: InkWell(
        onTap: widget.onTap,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: SizedBox(
              height: 60,
              width: 110,
              child: Column(
                children: [
                  Text(
                    widget.title!,
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w100,
                        fontSize: 18,
                        letterSpacing: 3),
                  ),
                  Divider(
                    thickness: isHovered ? 3 : 1,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
