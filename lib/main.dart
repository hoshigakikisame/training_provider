import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:training_provider/pages/cart_page.dart';
import 'package:training_provider/pages/home_page.dart';
import 'package:training_provider/pages/login_page.dart';
import 'package:training_provider/providers/product_provider.dart';
import 'package:training_provider/providers/user_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => UserProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: {
          '/': (context) => HomePage(),
          '/cart': (context) => CartPage(),
        },
        builder: (context, navigator) {
          final isLoggedIn = context.watch<UserProvider>().isLoggedIn;
          if (!isLoggedIn) {
            return LoginPage();
          }

          return ChangeNotifierProvider(
            create: (context) => ProductProvider(),
            child: navigator,
          );
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
