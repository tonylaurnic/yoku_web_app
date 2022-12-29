import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:yoku_web_app/models/date_model.dart';
import 'package:yoku_web_app/models/time_model.dart';
import 'package:yoku_web_app/widgets/text/text_button.dart';

class BookingMobile extends StatefulWidget {
  const BookingMobile({super.key});

  @override
  State<BookingMobile> createState() => _BookingMobileState();
}

class _BookingMobileState extends State<BookingMobile> {
  final List<String> items = [
    '1 persona',
    '2 persone',
    '3 persone',
    '4 persone',
    '5 persone',
    '6 persone',
    '7 persone',
    '8 persone',
  ];

  dynamic openTime;
  dynamic currentTime;

  String? selectedValue;
  String? selectedDay;
  String? selectedTime;
  bool isSelected = false;
  bool timeSelected = false;

  @override
  void initState() {
    // openTime = DateTime.parse("11:00:00");
    // currentTime = DateTime.now();
    super.initState();
  }

  final TextEditingController _controllerName = TextEditingController();
  final TextEditingController _controllerPhone = TextEditingController();
  final TextEditingController _controllerEmail = TextEditingController();

  void launchEmailSubmission() async {
    String mailUrl = _getEmailString(
        toEmail: 'tonylaurnic@gmail.com',
        subject: 'Prenotazione a nome ${_controllerName.text}',
        body:
            'Prenotazione ricevuta $currentTime, \nper $selectedValue, \ngiorno: $selectedDay, \norario: $selectedTime, \nNome: ${_controllerName.text}, \nTelefono: ${_controllerPhone.text}, \nemail: ${_controllerEmail.text},');

    try {
      await launchUrl(
        Uri.parse(mailUrl),
        mode: LaunchMode.platformDefault,
      );
    } catch (e) {
      await Clipboard.setData(const ClipboardData());
    }
  }

  static String _getEmailString({
    required String toEmail,
    required String subject,
    required String body,
    //required String from
  }) {
    final Uri emailReportUri = Uri(
      scheme: 'mailto',
      path: toEmail,
      query: _encodeQueryParameters(<String, String>{
        // 'from': from,
        'subject': subject,
        'body': body,
      }),
    );

    return emailReportUri.toString();
  }

  static String? _encodeQueryParameters(Map<String, String> params) {
    return params.entries
        .map((e) =>
            '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
        .join('&');
  }

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: Container(
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
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0, top: 10),
                      child: Text(
                        'X',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w200,
                            color: Colors.grey.shade600),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const TextButtonWidget(text: 'prenota'),
            Container(
              color: Colors.grey.shade300,
              height: 600,
              width: 600,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: DropdownButtonFormField(
                      iconSize: 20,
                      decoration: const InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          gapPadding: 4,
                          borderSide: BorderSide(
                            style: BorderStyle.solid,
                          ),
                        ),
                        hintText: 'PERSONE DA PRENOTARE',
                        contentPadding: EdgeInsets.symmetric(horizontal: 5),
                        fillColor: Colors.grey,
                      ),
                      items: items.map(
                        (item) {
                          return DropdownMenuItem(
                            value: item,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Text(item),
                            ),
                          );
                        },
                      ).toList(),
                      value: selectedValue,
                      onChanged: (value) {
                        setState(() {
                          selectedValue = value as String;
                          print(selectedValue);
                        });
                      },
                      icon: const Icon(
                        Icons.person,
                      ),
                    ),
                  ),

                  Text('Scieglie il giorno',
                      style: Theme.of(context).textTheme.headline6!),
                  Expanded(
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        childAspectRatio: 3,
                      ),
                      itemCount: DateModel.days.length,
                      itemBuilder: (context, index) {
                        return Card(
                          child: Center(
                            child: TextButton(
                              onPressed: () {
                                setState(
                                  () {
                                    selectedDay = DateModel.days[index].value;

                                    print(selectedDay.toString());
                                  },
                                );
                              },
                              child: Text(
                                DateModel.days[index].value,
                                style: Theme.of(context).textTheme.headline6,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),

                  //////
                  Text('Scieglie l\'orario',
                      style: Theme.of(context).textTheme.headline6!),

                  // currentTime == openTime
                  //     ? Expanded(
                  //         child: GridView.builder(
                  //           gridDelegate:
                  //               const SliverGridDelegateWithFixedCrossAxisCount(
                  //             crossAxisCount: 3,
                  //             childAspectRatio: 5,
                  //           ),
                  //           itemCount: LanchTime.times.length,
                  //           itemBuilder: (context, index) {
                  //             return Card(
                  //               child: Center(
                  //                 child: TextButton(
                  //                   onPressed: () {
                  //                     setState(
                  //                       () {
                  //                         selectedTime =
                  //                             LanchTime.times[index].value;

                  //                         print(selectedTime.toString());
                  //                       },
                  //                     );
                  //                   },
                  //                   child: Text(
                  //                     LanchTime.times[index].value,
                  //                     style: Theme.of(context)
                  //                         .textTheme
                  //                         .headline6,
                  //                   ),
                  //                 ),
                  //               ),
                  //             );
                  //           },
                  //         ),
                  //       )
                  //     :
                  Expanded(
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        childAspectRatio: 3,
                      ),
                      itemCount: TimeModel.times.length,
                      itemBuilder: (context, index) {
                        return Card(
                          child: Center(
                            child: TextButton(
                              onPressed: () {
                                setState(
                                  () {
                                    selectedTime = TimeModel.times[index].value;

                                    print(selectedTime.toString());
                                  },
                                );
                              },
                              child: Text(
                                TimeModel.times[index].value,
                                style: Theme.of(context).textTheme.headline6,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 20),
                    child: Column(
                      children: [
                        TextField(
                          controller: _controllerName,
                          keyboardType: TextInputType.text,
                          maxLines: 1,
                          decoration: InputDecoration(
                              fillColor: Colors.black,
                              focusColor: Colors.black,
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide:
                                    const BorderSide(color: Colors.grey),
                              ),
                              labelText: 'Nome e cognome',
                              labelStyle: const TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                              hintText: "Nome e cognome",
                              hintStyle: const TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50))),
                        ),
                        //

                        const SizedBox(
                          height: 5,
                        ),
                        TextField(
                          controller: _controllerPhone,
                          keyboardType: TextInputType.streetAddress,
                          maxLines: 1,
                          decoration: InputDecoration(
                              fillColor: Colors.black,
                              focusColor: Colors.black,
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide:
                                    const BorderSide(color: Colors.grey),
                              ),
                              labelText: 'Telefono',
                              labelStyle: const TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                              hintText: "Telefono",
                              hintStyle: const TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50))),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        TextField(
                          controller: _controllerEmail,
                          keyboardType: TextInputType.streetAddress,
                          maxLines: 1,
                          decoration: InputDecoration(
                              fillColor: Colors.black,
                              focusColor: Colors.black,
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide:
                                    const BorderSide(color: Colors.grey),
                              ),
                              labelText: 'Email',
                              labelStyle: const TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                              hintText: "Email",
                              hintStyle: const TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50))),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        TextButton(
                            onPressed: () {
                              launchEmailSubmission();
                              // launchEmailSubmission();
                            },
                            child: const Text(
                              'MANDA PRENOTAZIONE',
                              style: TextStyle(color: Colors.black),
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
