import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:training_provider/providers/product_provider.dart';
import 'package:training_provider/widgets/product_list.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart Page'),
      ),
      body: ProductList(list: context.watch<ProductProvider>().products),
    );
  }
}
