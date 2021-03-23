import 'package:flutter/material.dart';
import 'package:training_provider/models/product.dart';

class ProductList extends StatelessWidget {
  final List<Product> list;
  const ProductList({Key? key, required this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, index) {
        final item = list.elementAt(index);
        return Card(
          child: Column(
            children: [
              Text(item.name),
              Text(item.price.toString()),
            ],
          ),
        );
      },
    );
  }
}
