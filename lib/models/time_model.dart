class TimeModel {
  final String id;
  final String value;
  final DateTime time;

  const TimeModel({
    required this.id,
    required this.value,
    required this.time,
  });

  static List<TimeModel> times = [
    // TimeModel(
    //   id: '1',
    //   value: '18:00',
    //   time: DateTime(
    //     DateTime.now().year,
    //     DateTime.now().month,
    //     DateTime.now().day,
    //     18,
    //     0,
    //   ),
    // ),
    TimeModel(
      id: '2',
      value: '18:30',
      time: DateTime(
        DateTime.now().year,
        DateTime.now().month,
        DateTime.now().day,
        18,
        30,
      ),
    ),
    TimeModel(
      id: '3',
      value: '19:00',
      time: DateTime(
        DateTime.now().year,
        DateTime.now().month,
        DateTime.now().day,
        19,
        0,
      ),
    ),
    TimeModel(
      id: '4',
      value: '19:30',
      time: DateTime(
        DateTime.now().year,
        DateTime.now().month,
        DateTime.now().day,
        19,
        30,
      ),
    ),
    TimeModel(
      id: '5',
      value: '20:00',
      time: DateTime(
        DateTime.now().year,
        DateTime.now().month,
        DateTime.now().day,
        20,
        0,
      ),
    ),
    TimeModel(
      id: ' 6',
      value: '20:30',
      time: DateTime(
        DateTime.now().year,
        DateTime.now().month,
        DateTime.now().day,
        20,
        30,
      ),
    ),
    TimeModel(
      id: ' 7',
      value: '21:00',
      time: DateTime(
        DateTime.now().year,
        DateTime.now().month,
        DateTime.now().day,
        21,
        00,
      ),
    ),
    TimeModel(
      id: '8',
      value: '21:30',
      time: DateTime(
        DateTime.now().year,
        DateTime.now().month,
        DateTime.now().day,
        21,
        30,
      ),
    ),
    TimeModel(
      id: '9',
      value: '22:00',
      time: DateTime(
        DateTime.now().year,
        DateTime.now().month,
        DateTime.now().day,
        22,
        00,
      ),
    ),
    TimeModel(
      id: '10',
      value: '22:30',
      time: DateTime(
        DateTime.now().year,
        DateTime.now().month,
        DateTime.now().day,
        22,
        30,
      ),
    ),
    // TimeModel(
    //   id: '11',
    //   value: '23:00',
    //   time: DateTime(
    //     DateTime.now().year,
    //     DateTime.now().month,
    //     DateTime.now().day,
    //     23,
    //     00,
    //   ),
    // ),
  ];
}



// import 'package:equatable/equatable.dart';

// class DeliveryTimeModel extends Equatable {
//   final String id;
//   final String value;
//   final DateTime deliveryTime;

//   const DeliveryTimeModel({
//     required this.id,
//     required this.value,
//     required this.deliveryTime,
//   });

//   // factory DeliveryTimeModel.initial() {
//   //   return DeliveryTimeModel(
//   //     id: '',
//   //     value: '',
//   //     time: DateTime.now(),
//   //   );
//   // }

//   static DeliveryTimeModel fromJson(
//     Map<String, dynamic> json, [
//     String? id,
//   ]) {
//     DeliveryTimeModel deliveryTime = DeliveryTimeModel(
//       id: id ?? json['id'],
//       value: json['value'],
//       deliveryTime: json['deliveryTime'],
//     );
//     return deliveryTime;
//   }

//   @override
//   List<Object?> get props => [id, value, deliveryTime];
// }
