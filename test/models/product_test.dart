import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:training_provider/models/product.dart';

void main() {
  test('product harus bisa digenerate dari json', () {
    final String jsonString = '''
  {
    "nama_barang" : "Kopi ABC",
    "harga": 2000,
    "deskripsi" : "Ini adalah deskripsi"
  }
  ''';

    final map = json.decode(jsonString);
    final product = Product.fromJson(map);
    expect(product.name, 'Kopi ABC');
    expect(product.price, 2000.0);
  });
}
