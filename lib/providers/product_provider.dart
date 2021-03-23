import 'package:flutter/material.dart';
import 'package:training_provider/models/product.dart';

class ProductProvider with ChangeNotifier {
  List<Product> products = <Product>[
    Product(
      name: 'Kopi ABC',
      price: 2000,
    ),
    Product(
      name: 'Kopi Torabika',
      price: 2000,
    ),
    Product(
      name: 'Kopi Luwak',
      price: 2000,
    ),
    Product(
      name: 'Kopi Tubruk',
      price: 2000,
    ),
    Product(
      name: 'Kopi Susu',
      price: 2000,
    ),
  ];

  void clear() {
    products.clear();
    notifyListeners();
  }

  @override
  void dispose() {
    print('aku dibunuh');
    super.dispose();
  }
}
