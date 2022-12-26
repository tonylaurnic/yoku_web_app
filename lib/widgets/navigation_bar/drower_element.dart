import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:yoku_web_app/router/route_constants.dart';

class DrowerElement extends StatefulWidget {
  const DrowerElement({
    Key? key,
  }) : super(key: key);

  @override
  State<DrowerElement> createState() => _DrowerElementState();
}

class _DrowerElementState extends State<DrowerElement> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    final hovered = Matrix4.identity()..trace();
    final transform = isHovered ? hovered : Matrix4.identity();

    void onEntered(bool isHovered) {
      setState(() {
        this.isHovered = isHovered;
      });
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: InkWell(
        focusColor: Colors.transparent,
        onTap: () {
          context.push(RouteConstants.dialogbox);
        },
        child: MouseRegion(
          onEnter: (_) => onEntered(true),
          onExit: (_) => onEntered(false),
          child: AnimatedContainer(
            duration: const Duration(seconds: 5),
            transform: hovered,
            child: SizedBox(
              width: 40,
              height: 50,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Divider(
                    thickness: 1,
                    indent: isHovered ? 15 : 0,
                    color: Colors.black,
                  ),
                  const Divider(
                    thickness: 1,
                    color: Colors.black,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
