import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';

class HomeController extends GetxController {
  static HomeController instance = Get.find();
  var selectedDate = DateTime.now().obs;
  Logger logger = Logger();

  @override
  void onClose() {}

  chooseDate() async {
    DateTime? pickedDate = await showDatePicker(
      builder: (context, child) {
        return Theme(data: ThemeData.dark(), child: child!);
      },
      // locale: const Locale("it", "IT"),
      context: Get.context!,
      initialDate: selectedDate.value,
      firstDate: DateTime(2022),
      lastDate: DateTime(2035),
      //initialEntryMode: DatePickerEntryMode.input,
      // initialDatePickerMode: DatePickerMode.year,
      helpText: 'Sciegli il giorno',
      cancelText: 'Chiudi',
      confirmText: 'Seleziona',
      errorFormatText: 'Inserisci dati validi',
      errorInvalidText: 'Inserisci una data valida',
      fieldLabelText: 'DOB',
      fieldHintText: 'Month/Date/Year',
      selectableDayPredicate: disableDate,
      initialDatePickerMode: DatePickerMode.day,
    );
    if (pickedDate != null && pickedDate != selectedDate.value) {
      selectedDate.value = pickedDate;
    }
  }

  bool disableDate(DateTime day) {
    var monday = day.weekday == 1;

    var a = (day.isAfter(DateTime.now().subtract(const Duration(days: 1))));
    var b = day.isBefore(DateTime.now().add(const Duration(days: 30)));

    // logger.i(monday );
    if (monday != a && b) {
      return true;
    }
    return false;
  }
}


// if (day == day.subtract(Duration(days: day.weekday - 1)))