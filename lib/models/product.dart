class Product {
  final String name;
  final double price;

  Product({required this.name, required this.price});

  factory Product.fromJson(Map<String, dynamic> map) => Product(
        name: map['nama_barang'],
        price: (map['harga'] as num).toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "nama_barang": name,
        "harga": price,
      };
}
