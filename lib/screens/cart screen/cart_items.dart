import 'dart:convert';

import 'package:ecommerce_app/model/cart_model.dart';
import 'package:ecommerce_app/model/product_model.dart';
import 'package:flutter/material.dart';

class Cartitem extends StatefulWidget {
  // final Productmodel productmodel;
  // const Cartitem({Key? key, required this.productmodel}) : super(key: key);

  @override
  State<Cartitem> createState() => _CartitemState();
}

class _CartitemState extends State<Cartitem> {
  @override
  Widget build(BuildContext context) {
    var cartitem = Cartmodel().allcart.length;
    final size = MediaQuery.of(context).size;
    return ListView.builder(
      itemCount: cartitem,
      itemBuilder: (BuildContext context, int index) {
        final productname = Cartmodel().allcart[index];
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            elevation: 10,
            child: SizedBox(
              height: size.height / 6,
              width: size.width / 4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Product Name' + productname.title,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Size : ' +
                            productname.size.toString() +
                            '   ' +
                            'Price : \$' +
                            productname.price.toString(),
                        style: const TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    color: Colors.black,
                  ),
                  SizedBox(
                    height: 100,
                    width: 50,
                    child: Hero(
                      tag: "${productname.id}",
                      child: Image.asset(
                        productname.image,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
