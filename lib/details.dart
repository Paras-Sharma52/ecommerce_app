import 'package:ecommerce_app/home.dart';
import 'package:ecommerce_app/model/product_model.dart';
import 'package:ecommerce_app/screens/detail_comp/addcart.dart';
import 'package:ecommerce_app/screens/detail_page.dart';
import 'package:flutter/material.dart';

class Detailspage extends StatelessWidget {
  final Productmodel productmodel;
  const Detailspage({Key? key, required this.productmodel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: productmodel.color,
      appBar: appbarBuild(true, context, productmodel.title),
      body: DetailsScreen(
        productmodel: productmodel,
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: AddCart(productmodel: productmodel),
        ),
      ),
    );
  }
}
