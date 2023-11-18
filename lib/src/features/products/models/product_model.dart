import 'package:ecommerce/src/features/products/models/product_price_model.dart';

class ProductModel {
  final String id, name, description;
  final ProductPriceModel price;

  ProductModel({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      price: ProductPriceModel.fromJson(json['price']),
    );
  }
}
