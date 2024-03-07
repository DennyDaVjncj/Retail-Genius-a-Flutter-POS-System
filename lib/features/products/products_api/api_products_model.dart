import '../product.dart';

class Products {

  Products({required this.data});

  factory Products.fromJson(Map<String, dynamic> json) {
    final List<Product> products = <Product>[];
    final data = json['data'];
    data.forEach((value) {
      products.add(Product.fromJson(value));
    });
    return Products(data: products);
  }
  List<Product> data;
}
