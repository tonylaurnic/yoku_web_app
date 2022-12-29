import 'package:flutter/material.dart';

class DrowerElement extends StatefulWidget {
  const DrowerElement({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  final Function() onPressed;

  @override
  State<DrowerElement> createState() {
    return _DrowerElementState(onPressed);
  }
}

class _DrowerElementState extends State<DrowerElement>
    with TickerProviderStateMixin {
  final Function() onPressed;

  bool isHovered = false;
  double _size = 0;

  _DrowerElementState(this.onPressed);
  @override
  Widget build(BuildContext context) {
    void onEntered() {
      setState(() {
        _size = isHovered ? 0 : 15;
        isHovered = !isHovered;
      });
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: InkWell(
        focusColor: Colors.transparent,
        onTap: onPressed,
        child: MouseRegion(
          onEnter: (_) => onEntered(),
          onExit: (_) => onEntered(),
          child: SizedBox(
            width: 40,
            height: 50,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedSize(
                  curve: Curves.easeIn,
                  duration: const Duration(seconds: 10),
                  child: Divider(
                    thickness: 1,
                    indent: _size,
                    color: Colors.black,
                  ),
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
    );
  }
}

// class DrowerElement extends StatefulWidget {
//   const DrowerElement({
//     Key? key,
//   }) : super(key: key);

//   @override
//   State<DrowerElement> createState() => _DrowerElementState();
// }

// class _DrowerElementState extends State<DrowerElement>
//     with TickerProviderStateMixin {
//   bool isHovered = false;

//   @override
//   Widget build(BuildContext context) {
//     late AnimationController animationController =
//         AnimationController(vsync: this, duration: const Duration(seconds: 10))
//           ..forward();
//     // ..repeat(reverse: false);

//     late Animation<double> animation =
//         Tween<double>(begin: 15, end: 0).animate(animationController);
  

//     void onEntered(bool isHovered) {
//       setState(() {
//         this.isHovered = isHovered;
//       });
//     }

//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 30.0),
//       child: InkWell(
//         focusColor: Colors.transparent,
//         onTap: () {
//           context.push(RouteConstants.dialogbox);
//         },
//         child: MouseRegion(
//           onEnter: (_) => onEntered(true),
//           onExit: (_) => onEntered(false),
//           child: SizedBox(
//             width: 40,
//             height: 50,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 SizeTransition(
//                   sizeFactor: animation,
//                   axis: Axis.horizontal,
//                   axisAlignment: 0.0,
//                   child: Divider(
//                     thickness: 1,
//                     indent: isHovered ? animation.value : animation.value - 15,
//                     color: Colors.black,
//                   ),
//                 ),
//                 const Divider(
//                   thickness: 1,
//                   color: Colors.black,
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
