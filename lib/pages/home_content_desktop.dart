import 'package:flutter/material.dart';
import 'package:yoku_web_app/widgets/carousel/carousel_widget.dart';
import 'package:yoku_web_app/widgets/course_widget/details_home_widget.dart';
import 'package:yoku_web_app/widgets/logo_view/home_picture_widget.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(height: 120),
          HomePictureWidget(
            heigtContainer: MediaQuery.of(context).size.height,
            widithContainer: MediaQuery.of(context).size.height * 1.7,
            image: 'images/home.JPG',
          ),
          PresentationDetails(
            heigtContainer: MediaQuery.of(context).size.height,
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
                  heigtContainer: MediaQuery.of(context).size.height * 1.5,
                  widithContainer: MediaQuery.of(context).size.width * 0.4,
                  image: 'images/home2.jpg',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 70),
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
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: HomePictureWidget(
                  heigtContainer: MediaQuery.of(context).size.height,
                  widithContainer: MediaQuery.of(context).size.height * 2,
                  image: 'images/plate.JPG',
                  imageHeight: 200,
                ),
              ),
            ],
          ),
          const CarouseWidget()
        ],
      ),
    );
  }
}
