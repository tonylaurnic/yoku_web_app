class ImageModel {
  final String imageUrl;
  const ImageModel({
    required this.imageUrl,
  });

  static List<ImageModel> images = [
    const ImageModel(
      imageUrl: 'images/home.JPG',
    ),
    const ImageModel(
      imageUrl: 'images/home2.jpg',
    ),
    const ImageModel(
      imageUrl: 'images/Image 23-12-22 at 17.10.JPG',
    ),
    const ImageModel(
      imageUrl: 'images/plate.JPG',
    ),
  ];
}
