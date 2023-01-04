import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:yoku_web_app/widgets/footer/footer_widget.dart';
import 'package:yoku_web_app/widgets/picture_widget/home_picture_widget.dart';
import 'package:yoku_web_app/widgets/text/text_button.dart';

class PhilosophyDesktop extends StatelessWidget {
  const PhilosophyDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ScreenTypeLayout(
        mobile: const SizedBox(),
        desktop: Column(
          children: [
            const SizedBox(height: 160),
            SizedBox(
              height: 250,
              child: Stack(
                children: [
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width * 0.865,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/1.jpg'),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 50,
                    left: 5,
                    child: Container(
                      height: 35,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                HomePictureWidget(
                  topPadding: 50,
                  image: 'assets/5.jpg',
                  heigtContainer: MediaQuery.of(context).size.height,
                  widithContainer: MediaQuery.of(context).size.width * 0.4,
                ),
                HomePictureWidget(
                  topPadding: 50,
                  image: 'assets/4.jpg',
                  heigtContainer: MediaQuery.of(context).size.height,
                  widithContainer: MediaQuery.of(context).size.width * 0.4,
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
              heigtContainer: MediaQuery.of(context).size.height * 0.6,
              widithContainer: MediaQuery.of(context).size.width * 0.865,
            ),
            const SizedBox(
              height: 120,
            ),
            const FooterWidget()
          ],
        ),
      ),
    );
    //  ScreenTypeLayout(
    //   mobile: const HomeContentMobile(),
    //   desktop: const HomeContentDesktop(),
    // ),
  }
}
