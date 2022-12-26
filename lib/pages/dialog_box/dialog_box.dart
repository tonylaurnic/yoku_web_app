import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:yoku_web_app/widgets/navigation_drawer/navigation_drawer.dart';
import 'package:yoku_web_app/widgets/text/text_button.dart';

class DialogBoxScreen extends StatelessWidget {
  const DialogBoxScreen({super.key});

  @override
  Widget build(BuildContext context) {
//     void MyPainter(Canvas canvas, Size size) {
//   final p1 = Offset(50, 50);
//   final p2 = Offset(250, 150);
//   final paint = Paint()
//     ..color = Colors.black
//     ..strokeWidth = 4;
//   canvas.drawLine(p1, p2, paint);
// }

    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? const NavigationDrawer(isHome: true)
            : null,
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: const Color(0xFFfaf9f3),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  context.pop();
                },
                child: SizedBox(
                  height: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 40.0, top: 20),
                        child: Text(
                          'X',
                          style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w200,
                              color: Colors.grey.shade600),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const TextButtonWidget(text: 'Home'),
              const TextButtonWidget(text: 'prenota'),
              const TextButtonWidget(text: 'filosofia'),
              const TextButtonWidget(text: 'menu'),
              const TextButtonWidget(text: 'contatti'),
              const TextButtonWidget(text: 'lavora con noi'),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    const startPoint = Offset(-70, 150);
    const endPoint = Offset(150, -50);

    const startPointB = Offset(250, 170);
    const endPointB = Offset(70, 20);

    final paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 2;

    final paint2 = Paint()
      ..color = Colors.black
      ..strokeWidth = 2;
    canvas.drawLine(startPoint, endPoint, paint);
    canvas.drawLine(endPointB, startPointB, paint2);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
