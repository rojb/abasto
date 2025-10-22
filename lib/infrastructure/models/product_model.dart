class ProductModel {
  final String name;
  final String imageUrl;
  final String unitMeasure;
  final double price;
  final double discountPrice;

  ProductModel({
    required this.name,
    required this.imageUrl,
    required this.unitMeasure,
    required this.price,
    this.discountPrice = 0,
  });
}
