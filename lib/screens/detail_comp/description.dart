import 'package:ecommerce_app/model/product_model.dart';
import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  final Productmodel productmodel;
  const Description({Key? key, required this.productmodel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      productmodel.description,
      style: const TextStyle(height: 1.5),
    );
  }
}
