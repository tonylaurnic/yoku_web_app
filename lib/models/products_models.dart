import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String name;
  final String category;
  final String price;
  final String description;
  final String allergy;
  const Product({
    required this.name,
    required this.category,
    required this.price,
    required this.description,
    required this.allergy,
  });

  static List<Product> products = [
    const Product(
      name: 'HosoMaki slamone',
      category: 'Antipasti',
      price: '3.00',
      description: 'description',
      allergy: 'allergy',
    ),
    const Product(
      name: 'Uramaki salmone',
      category: 'Uramaki',
      price: '14',
      description: 'description',
      allergy: 'allergy',
    )
  ];

  @override
  List<Object> get props {
    return [
      name,
      category,
      price,
      description,
      allergy,
    ];
  }
}
