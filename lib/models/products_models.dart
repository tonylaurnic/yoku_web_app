import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String name;
  final String category;
  final double price;
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
      price: 3.00,
      description: 'description',
      allergy: '',
    ),
    const Product(
      name: 'HosoMaki slamone',
      category: 'Antipasti',
      price: 3.00,
      description: 'description',
      allergy: '',
    ),
    const Product(
      name: 'HosoMaki slamone',
      category: 'Antipasti',
      price: 3.00,
      description: 'description',
      allergy: '',
    ),
    const Product(
      name: 'HosoMaki slamone',
      category: 'Antipasti',
      price: 3.00,
      description: 'description',
      allergy: '',
    ),
    const Product(
      name: 'Gamberi e scampi',
      category: 'Crudite',
      price: 14,
      description: 'description',
      allergy: '',
    ),
    const Product(
      name: 'SALMON TARTARE',
      category: 'Tartare',
      price: 10,
      description:
          'tartare di salmone con avocado, ikura, pasta kataifi e il suo condimento',
      allergy: '',
    ),
    const Product(
      name: 'HosoMaki slamone',
      category: 'Antipasti',
      price: 3.00,
      description: 'description',
      allergy: '',
    ),
    const Product(
      name: 'HosoMaki slamone',
      category: 'Antipasti',
      price: 3.00,
      description: 'description',
      allergy: '',
    ),
    const Product(
      name: 'HosoMaki slamone',
      category: 'Antipasti',
      price: 3.00,
      description: 'description',
      allergy: '',
    ),
    const Product(
      name: 'HosoMaki slamone',
      category: 'Antipasti',
      price: 3.00,
      description: 'description',
      allergy: '',
    ),
    const Product(
      name: 'Gamberi e scampi',
      category: 'Crudite',
      price: 14,
      description: 'description',
      allergy: '',
    ),
    const Product(
      name: 'SALMON TARTARE',
      category: 'Tartare',
      price: 10,
      description:
          'tartare di salmone con avocado, ikura, pasta kataifi e il suo condimento',
      allergy: '',
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
