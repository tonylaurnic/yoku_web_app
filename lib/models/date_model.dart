class DateModel {
  final String id;
  final String value;
  final bool selectedDate;

  const DateModel({
    required this.id,
    required this.value,
    required this.selectedDate,
  });

  static List<DateModel> days = [
    const DateModel(
      id: '1',
      value: 'Martedi',
      selectedDate: false,
    ),
    const DateModel(
      id: '2',
      value: 'Mercoledi',
      selectedDate: false,
    ),
    const DateModel(
      id: '3',
      value: 'Giovedi',
      selectedDate: false,
    ),
    const DateModel(
      id: '4',
      value: 'Venerdi',
      selectedDate: false,
    ),
    const DateModel(
      id: '5',
      value: 'Sabato',
      selectedDate: false,
    ),
    const DateModel(
      id: '6',
      value: 'Domenica',
      selectedDate: false,
    ),
  ];
}
