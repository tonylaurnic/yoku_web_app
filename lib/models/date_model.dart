class DateModel {
  final String id;
  final String value;

  const DateModel({
    required this.id,
    required this.value,
  });

  static List<DateModel> days = [
    const DateModel(
      id: '1',
      value: 'Martedi',
    ),
    const DateModel(
      id: '2',
      value: 'Mercoledi',
    ),
    const DateModel(
      id: '3',
      value: 'Giovedi',
    ),
    const DateModel(
      id: '4',
      value: 'Venerdi',
    ),
    const DateModel(
      id: '5',
      value: 'Sabato',
    ),
    const DateModel(
      id: '6',
      value: 'Domenica',
    ),
  ];
}
