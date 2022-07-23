import 'package:ecommerce_app/home.dart';
import 'package:ecommerce_app/screens/cart%20screen/cart_items.dart';
import 'package:flutter/material.dart';

class Carts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appbarBuild(false, context, 'Cart Items'), body: Cartitem());
  }
}
