import 'package:flutter/material.dart';

class DrowerElement extends StatefulWidget {
  const DrowerElement({
    Key? key,
    // required this.builder,
  }) : super(key: key);

  // final Widget Function(bool isHovered) builder;

  @override
  State<DrowerElement> createState() => _DrowerElementState();
}

class _DrowerElementState extends State<DrowerElement> {
  bool isHovered = false;
  bool isTap = false;

  @override
  Widget build(BuildContext context) {
    final hovered = Matrix4.identity()..translate(0, 0, 0);
    // final transform = isHovered ? hovered : Matrix4.identity();

    void onEntered(bool isHovered) {
      setState(() {
        this.isHovered = isHovered;
        isTap = isTap;
      });
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: InkWell(
        focusColor: Colors.transparent,
        onTap: () {
          setState(() {
            isTap = true;
          });
        },
        child: MouseRegion(
          onEnter: (_) => onEntered(true),
          onExit: (_) => onEntered(false),
          child: AnimatedContainer(
            duration: const Duration(seconds: 5),
            // transform: hovered,
            // child: widget.builder(isHovered),
            child: SizedBox(
              width: 40,
              height: 50,
              child: isTap
                  ? Center(
                      child: Text(
                        'X',
                        style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.w100,
                            color: Colors.black.withOpacity(0.6)),
                      ),
                    )
                  //? const Icon(
                  //     size: 50,
                  //     Icons.close,
                  //   )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Divider(
                          thickness: 1,
                          indent: isHovered ? 10 : 0,
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
