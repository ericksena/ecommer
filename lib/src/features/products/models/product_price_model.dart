class ProductPriceModel {
  final double listPrice, sellingPrice;

  ProductPriceModel({
    required this.listPrice,
    required this.sellingPrice,
  });

  factory ProductPriceModel.fromJson(Map<String, dynamic> json) {
    return ProductPriceModel(
      listPrice: json['listPrice'],
      sellingPrice: json['sellingPrice'],
    );
  }
}
