import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/model/product_model.dart';
import 'package:ecommerce_app/screens/detail_comp/addcart.dart';
import 'package:ecommerce_app/screens/detail_comp/colorstheme.dart';
import 'package:ecommerce_app/screens/detail_comp/counterfavbtn.dart';
import 'package:ecommerce_app/screens/detail_comp/description.dart';
import 'package:ecommerce_app/screens/detail_comp/photoitems.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final Productmodel productmodel;
  const DetailsScreen({Key? key, required this.productmodel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: kDefaultPaddin,
                    right: kDefaultPaddin,
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: [
                      Colortheme(
                        productmodel: productmodel,
                      ),
                      const SizedBox(
                        height: kDefaultPaddin / 2,
                      ),
                      Description(productmodel: productmodel),
                      const SizedBox(
                        height: kDefaultPaddin / 2,
                      ),
                      const Counterbtn(),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Photoitems(productmodel: productmodel),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
