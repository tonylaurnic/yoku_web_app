import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:yoku_web_app/widgets/course_widget/presentation_details.dart';
import 'package:yoku_web_app/widgets/logo_view/logo_view_widget.dart';

class HomeContentMobile extends StatelessWidget {
  const HomeContentMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ScreenTypeLayout(
        mobile: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 120),
            HomePictureWidget(
              heigtContainer: MediaQuery.of(context).size.height,
              widithContainer: MediaQuery.of(context).size.height,
              image: 'images/home.JPG',
            ),
            PresentationDetails(
              heigtContainer: MediaQuery.of(context).size.height,
              widithContainer: MediaQuery.of(context).size.width,
              title: 'UNA LOCATION \nESCLUSIVA',
              content:
                  'L\'eleganza e la cura dei particolari sono i tratti distintivi del nostro ristorante. La nostra location ricercata ed esclusiva ed il nostro staff preparato e professionale accompagneranno la vostra esperienza nel migliore dei modi. Tutto questo immerso in una delle zone più importanti della città, un angolo di oriente pronto ad accogliervi',
            ),
            HomePictureWidget(
              heigtContainer: MediaQuery.of(context).size.height,
              widithContainer: MediaQuery.of(context).size.height,
              image: 'images/home2.jpg',
            ),
            PresentationDetails(
              heigtContainer: MediaQuery.of(context).size.height * 0.9,
              widithContainer: MediaQuery.of(context).size.width,
              title: 'UN \'ESPERIENZA IRRIPETIBILE',
              content:
                  'La nostra cucina nasce dallo studio e dall \'amore per la cultura Giapponese ed orientale, sotto ogni punto di vista. Nel nostro ristorante la tradizione si sposa alla perfezione con l’innovazione e le influenze di altre culture, portando ad una proposta fusion intrigante ed appagante, perfetta per ogni tipo di palato. Il pesce freschissimo viene manipolato con maestria dai nostri Chef, con lo scopo di conservare il suo sapore naturale e di arricchirlo con combinazioni gustose e sorprendenti.',
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: HomePictureWidget(
                heigtContainer: MediaQuery.of(context).size.height,
                widithContainer: MediaQuery.of(context).size.height,
                image: 'images/plate.JPG',
                imageHeight: 200,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
