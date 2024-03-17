import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:yoku_web_app/constants/controllers.dart';
import 'package:yoku_web_app/controllers/home_controller.dart';
import 'package:yoku_web_app/models/time_model.dart';
import 'package:yoku_web_app/router/app_pages.dart';
import 'package:yoku_web_app/widgets/text/text_button.dart';
import 'package:yoku_web_app/widgets/textform/custom_text_form_field.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
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
  int isSelecteH = -1;
  int isSelectedDay = -1;
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
            'Prenotazione ricevuta $currentTime, \nper $selectedValue, \ngiorno: ${DateFormat("dd-MM-yyyy").format(homeController.selectedDate.value).toString()}, \norario: $selectedTime, \nNome: ${_controllerName.text}, \nTelefono: ${_controllerPhone.text}, \nemail: ${_controllerEmail.text},');

    try {
      await launchUrl(
        Uri.parse(mailUrl),
        mode: LaunchMode.platformDefault,
      );
    } catch (e) {
      await Clipboard.setData(ClipboardData(text: mailUrl));
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
    Get.lazyPut(() => HomeController());
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: const Color(0xFFfaf9f3),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () => Get.toNamed(Routes.home),
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
            TextButtonWidget(
              text: 'prenota',
              colour: Colors.grey.shade100,
            ),
            Container(
              color: Colors.grey.shade300,
              height: 580,
              width: 600,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 100, right: 100),
                    child: DropdownButtonFormField(
                      iconSize: 20,
                      decoration: const InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          gapPadding: 4,
                          borderSide: BorderSide(
                            style: BorderStyle.solid,
                          ),
                        ),
                        hintText: '              PERSONE DA PRENOTARE',
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
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
                      style: Theme.of(context).textTheme.titleLarge!),

                  Obx(() => ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            fixedSize: const Size(180, 40)),
                        onPressed: () {
                          if (homeController.selectedDate.value.weekday == 1) {
                            Get.snackbar(
                              "SALVE",
                              "DI LUNEDI SIAMO CHIUSI",
                              snackPosition: SnackPosition.BOTTOM,
                              backgroundColor: Colors.green,
                              colorText: Colors.white,
                            );
                          } else {
                            homeController.chooseDate();
                          }

                          // homeController.chooseDate();
                        },
                        child: Text(
                          DateFormat("dd-MM-yyyy")
                              .format(homeController.selectedDate.value)
                              .toString(),
                          style: const TextStyle(
                              fontSize: 13, color: Colors.black),
                        ),
                      )),

                  //////
                  Text('Scieglie l\'orario',
                      style: Theme.of(context).textTheme.titleLarge!),

                  Expanded(
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 4.5,
                      ),
                      itemCount: TimeModel.times.length,
                      itemBuilder: (context, index) {
                        final isSelected = isSelecteH == index;
                        return Card(
                          color: isSelected
                              ? Colors.blueGrey.shade100
                              : Colors.white,
                          child: Center(
                            child: TextButton(
                              onPressed: () {
                                setState(
                                  () {
                                    isSelecteH = index;
                                    selectedTime = TimeModel.times[index].value;

                                    print(selectedTime.toString());
                                  },
                                );
                              },
                              child: Text(
                                TimeModel.times[index].value,
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 100, vertical: 5),
                    child: Column(
                      children: [
                        CustomTextField(
                          controllerPhone: _controllerName,
                          hintText: 'Nome e cognome',
                          labelText: 'Nome e cognome',
                        ),
                        //

                        const SizedBox(height: 5),
                        CustomTextField(
                          controllerPhone: _controllerPhone,
                          hintText: 'Telefono',
                          labelText: 'Telefono',
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        CustomTextField(
                          controllerPhone: _controllerEmail,
                          hintText: 'Email',
                          labelText: 'Email',
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
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                        ),
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
