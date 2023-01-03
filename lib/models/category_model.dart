import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final String name;
  final String imageUrl;

  const Category({
    required this.name,
    required this.imageUrl,
  });

  static List<Category> categories = [
    const Category(
      name: 'Antipasti',
      imageUrl: 'assets/tartare.JPG',
    ),
    const Category(
      name: 'Crudite',
      imageUrl: 'assets/tartare.JPG',
    ),
    const Category(
      name: 'Tartare',
      imageUrl: 'assets/tartare.JPG',
    ),
    const Category(
      name: 'Carpaccio',
      imageUrl: 'assets/tartare.JPG',
    ),
    const Category(
      name: 'Gunkan Special',
      imageUrl: 'assets/tartare.JPG',
    ),
    const Category(
      name: 'Tataki',
      imageUrl: 'assets/tartare.JPG',
    ),
    const Category(
      name: 'Nigiri',
      imageUrl: 'assets/tartare.JPG',
    ),
    const Category(
      name: 'Nigiri Special',
      imageUrl: 'assets/tartare.JPG',
    ),
    const Category(
      name: 'Hosomaki',
      imageUrl: 'assets/tartare.JPG',
    ),
    const Category(
      name: 'Temaki',
      imageUrl: 'assets/tartare.JPG',
    ),
    const Category(
      name: 'TemakiYoku',
      imageUrl: 'assets/tartare.JPG',
    ),
    const Category(
      name: 'Uramaki',
      imageUrl: 'assets/tartare.JPG',
    ),
    const Category(
      name: 'Futomaki',
      imageUrl: 'assets/tartare.JPG',
    ),
    const Category(
      name: 'Composizioni Sushi',
      imageUrl: 'assets/tartare.JPG',
    ),
    const Category(
      name: 'Composizioni sashimi',
      imageUrl: 'assets/tartare.JPG',
    ),
    const Category(
      name: 'Composizioni Yoku',
      imageUrl: 'assets/tartare.JPG',
    ),
    const Category(
      name: 'Sushi Vegetariano',
      imageUrl: 'assets/tartare.JPG',
    ),
    const Category(
      name: 'Cirashi',
      imageUrl: 'assets/tartare.JPG',
    ),
    const Category(
      name: 'Zuppe',
      imageUrl: 'assets/tartare.JPG',
    ),
    const Category(
      name: 'Riso',
      imageUrl: 'assets/tartare.JPG',
    ),
    const Category(
      name: 'Pasta e brodo',
      imageUrl: 'assets/tartare.JPG',
    ),
    const Category(
      name: 'Pasta Saltata',
      imageUrl: 'assets/tartare.JPG',
    ),
    const Category(
      name: 'Tempura',
      imageUrl: 'assets/tartare.JPG',
    ),
    const Category(
      name: 'Piastra',
      imageUrl: 'assets/tartare.JPG',
    ),
    const Category(
      name: 'Verdure',
      imageUrl: 'assets/tartare.JPG',
    ),
    const Category(
      name: 'Bevande',
      imageUrl: 'assets/tartare.JPG',
    ),
    const Category(
      name: 'Birre',
      imageUrl: 'assets/tartare.JPG',
    ),
  ];

  @override
  List<Object> get props => [name, imageUrl];
}
