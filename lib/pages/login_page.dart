import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:training_provider/providers/user_provider.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Provider.of<UserProvider>(context, listen: false).login();
            },
            child: Text('Login'),
          ),
        ],
      ),
    );
  }
}
