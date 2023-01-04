import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:yoku_web_app/widgets/footer/footer_widget.dart';
import 'package:yoku_web_app/widgets/picture_widget/home_picture_widget.dart';
import 'package:yoku_web_app/widgets/text/text_button.dart';

class PhilosophyMobile extends StatelessWidget {
  const PhilosophyMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ScreenTypeLayout(
        mobile: Column(
          children: [
            const SizedBox(height: 120),
            SizedBox(
              height: 150,
              child: Stack(
                children: [
                  Container(
                    height: 200,
                    // width: MediaQuery.of(context).size.width * 0.865,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/1.jpg'),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 5,
                    left: 5,
                    child: Container(
                      height: 20,
                      color: Colors.black,
                      child: const Center(
                        child: TextButtonWidget(
                          text: 'LA NOSTRA FILOSOFIA',
                          colour: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                HomePictureWidget(
                  topPadding: 50,
                  image: 'assets/1.jpg',
                  heigtContainer: MediaQuery.of(context).size.height,
                  widithContainer: MediaQuery.of(context).size.width,
                ),
                HomePictureWidget(
                  topPadding: 50,
                  image: 'assets/4.jpg',
                  heigtContainer: MediaQuery.of(context).size.height,
                  widithContainer: MediaQuery.of(context).size.width,
                ),
              ],
            ),
            const SizedBox(
              height: 60,
            ),
            const Divider(
              thickness: 1,
              color: Colors.black,
              indent: 30,
              endIndent: 30,
            ),
            HomePictureWidget(
              topPadding: 60,
              image: 'assets/7.jpg',
              heigtContainer: MediaQuery.of(context).size.height,
              widithContainer: MediaQuery.of(context).size.width,
            ),
            const SizedBox(
              height: 120,
            ),
            const FooterWidget()
          ],
        ),
      ),
    );
  }
}
