class ImageModel {
  final String imageUrl;
  const ImageModel({
    required this.imageUrl,
  });

  static List<ImageModel> images = [
    const ImageModel(
      imageUrl: 'assets/1.jpg',
    ),
    const ImageModel(
      imageUrl: 'assets/4.jpg',
    ),
    const ImageModel(
      imageUrl: 'assets/5.jpg',
    ),
    const ImageModel(
      imageUrl: 'assets/7.jpg',
    ),
  ];
}
