class ImageModel {
  final String imageUrl;
  const ImageModel({
    required this.imageUrl,
  });

  static List<ImageModel> images = [
    const ImageModel(
      imageUrl: 'assets/home.JPG',
    ),
    const ImageModel(
      imageUrl: 'assets/home2.jpg',
    ),
    const ImageModel(
      imageUrl: 'assets/Image 23-12-22 at 17.10.JPG',
    ),
    const ImageModel(
      imageUrl: 'assets/plate.JPG',
    ),
  ];
}
