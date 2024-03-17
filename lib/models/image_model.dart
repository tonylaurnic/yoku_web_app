class ImageModel {
  final String imageUrl;
  const ImageModel({
    required this.imageUrl,
  });

  static List<ImageModel> images = [
    const ImageModel(
      imageUrl: 'assets/ventresca.jpg',
    ),
    const ImageModel(
      imageUrl: 'assets/menu.jpg',
    ),
    const ImageModel(
      imageUrl: 'assets/nigiri.png',
    ),
    const ImageModel(
      imageUrl: 'assets/output-onlinepngtools-7.png',
    ),
  ];
}
