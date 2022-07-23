import 'package:ecommerce_app/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyEcom());
}

class MyEcom extends StatelessWidget {
  const MyEcom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecom',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}
