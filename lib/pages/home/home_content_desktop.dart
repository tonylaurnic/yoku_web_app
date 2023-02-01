import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:yoku_web_app/widgets/carousel/carousel_widget.dart';
import 'package:yoku_web_app/widgets/course_widget/details_home_widget.dart';
import 'package:yoku_web_app/widgets/footer/footer_widget.dart';
import 'package:yoku_web_app/widgets/picture_widget/home_picture_widget.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ScreenTypeLayout(
        mobile: const SizedBox(),
        desktop: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            HomePictureWidget(
              topPadding: 120,
              heigtContainer: MediaQuery.of(context).size.height * 0.8,
              widithContainer: MediaQuery.of(context).size.width,
              image: 'assets/home.JPG',
            ),
            PresentationDetails(
              heigtContainer: MediaQuery.of(context).size.height * 0.5,
              widithContainer: MediaQuery.of(context).size.height * 1.7,
              title: 'UNA LOCATION \nESCLUSIVA',
              content:
                  'L\'eleganza e la cura dei particolari sono i tratti distintivi del nostro ristorante. La nostra location ricercata ed esclusiva ed il nostro staff preparato e professionale accompagneranno la vostra esperienza nel migliore dei modi. Tutto questo immerso in una delle zone più importanti della città, un angolo di oriente pronto ad accogliervi',
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: HomePictureWidget(
                    heigtContainer: MediaQuery.of(context).size.height,
                    widithContainer: MediaQuery.of(context).size.width * 0.4,
                    image: 'assets/home2.jpg',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: PresentationDetails(
                    heigtContainer: MediaQuery.of(context).size.height * 1.5,
                    widithContainer: MediaQuery.of(context).size.width * 0.4,
                    title: 'UN \'ESPERIENZA IRRIPETIBILE',
                    content:
                        'La nostra cucina nasce dallo studio e dall \'amore per la cultura Giapponese ed orientale, sotto ogni punto di vista. Nel nostro ristorante la tradizione si sposa alla perfezione con l’innovazione e le influenze di altre culture, portando ad una proposta fusion intrigante ed appagante, perfetta per ogni tipo di palato. Il pesce freschissimo viene manipolato con maestria dai nostri Chef, con lo scopo di conservare il suo sapore naturale e di arricchirlo con combinazioni gustose e sorprendenti.',
                  ),
                ),
              ],
            ),
            Column(
              children: [
                HomePictureWidget(
                  heigtContainer: MediaQuery.of(context).size.height,
                  widithContainer: MediaQuery.of(context).size.height * 2,
                  image: 'assets/plate.PNG',
                  imageHeight: 200,
                ),
                const SizedBox(height: 50),
              ],
            ),
            const CarouseWidget(),
            const SizedBox(height: 50),
            const FooterWidget(),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
