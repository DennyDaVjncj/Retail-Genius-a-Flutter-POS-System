import 'package:thepos/features/customer/data/models/customer.dart';

class Customers {

  Customers({required this.data});

  factory Customers.fromJson(Map<String, dynamic> json) {
    final List<Customer> products = <Customer>[];
    final data = json['data'];
    data.forEach((value) {
      products.add(Customer.fromJson(value));
    });
    return Customers(data: products);
  }
  List<Customer> data;
}