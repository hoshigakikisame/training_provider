import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:training_provider/providers/product_provider.dart';
import 'package:training_provider/providers/user_provider.dart';
import 'package:training_provider/widgets/product_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Market Place'),
          actions: [
            IconButton(
              icon: Icon(Icons.shopping_bag),
              onPressed: () {
                Navigator.pushNamed(context, '/cart');
              },
            )
          ],
        ),
        body: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Provider.of<ProductProvider>(context, listen: false).clear();
              },
              child: Text('CLEAR'),
            ),
            ElevatedButton(
              onPressed: () {
                Provider.of<UserProvider>(context, listen: false).logout();
              },
              child: Text('LOG OUT'),
            ),
            Expanded(
                child: ProductList(
                    list: context.watch<ProductProvider>().products)),
          ],
        ));
  }
}
