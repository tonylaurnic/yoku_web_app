class LanchTime {
  final String id;
  final String value;
  final DateTime time;

  const LanchTime({
    required this.id,
    required this.value,
    required this.time,
  });

  static List<LanchTime> times = [
    LanchTime(
      id: '1',
      value: '11:00',
      time: DateTime(
        DateTime.now().year,
        DateTime.now().month,
        DateTime.now().day,
        11,
        0,
      ),
    ),
    LanchTime(
      id: '2',
      value: '12:00',
      time: DateTime(
        DateTime.now().year,
        DateTime.now().month,
        DateTime.now().day,
        12,
        00,
      ),
    ),
    LanchTime(
      id: '3',
      value: '13:00',
      time: DateTime(
        DateTime.now().year,
        DateTime.now().month,
        DateTime.now().day,
        13,
        0,
      ),
    ),
    LanchTime(
      id: '4',
      value: '14:00',
      time: DateTime(
        DateTime.now().year,
        DateTime.now().month,
        DateTime.now().day,
        14,
        00,
      ),
    ),
    LanchTime(
      id: '5',
      value: '14:30',
      time: DateTime(
        DateTime.now().year,
        DateTime.now().month,
        DateTime.now().day,
        14,
        30,
      ),
    ),
  ];
}
