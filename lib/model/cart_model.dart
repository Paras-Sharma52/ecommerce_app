import 'package:ecommerce_app/model/product_model.dart';
import 'package:flutter/material.dart';

class Cartcontent {
  final String title, image, description;
  final int price, size, id;
  final Color color;

  Cartcontent(
      {required this.color,
      required this.title,
      required this.image,
      required this.description,
      required this.price,
      required this.size,
      required this.id});
}

class Cartmodel {
  List<Cartcontent> cartitem = [
    Cartcontent(
      id: 1,
      title: "Office Code",
      price: 234,
      size: 12,
      description: dummyText,
      image: "lib/assets/images/bag_1.png",
      color: const Color(0xFF3D82AE),
    ),
    Cartcontent(
      id: 2,
      title: "Belt Bag",
      price: 100,
      size: 8,
      description: dummyText,
      image: "lib/assets/images/bag_2.png",
      color: const Color(0xFFD3A984),
    ),
    Cartcontent(
        id: 3,
        title: "Hang Top",
        price: 234,
        size: 10,
        description: dummyText,
        image: "lib/assets/images/bag_3.png",
        color: const Color(0xFF989493)),
    Cartcontent(
        id: 4,
        title: "Old Fashion",
        price: 75,
        size: 11,
        description: dummyText,
        image: "lib/assets/images/bag_4.png",
        color: const Color(0xFFE6B398)),
    Cartcontent(
        id: 5,
        title: "Office Code",
        price: 234,
        size: 12,
        description: dummyText,
        image: "lib/assets/images/bag_5.png",
        color: const Color(0xFFFB7883)),
    Cartcontent(
      id: 6,
      title: "Office Code",
      price: 234,
      size: 12,
      description: dummyText,
      image: "lib/assets/images/bag_6.png",
      color: const Color(0xFFAEAEAE),
    ),
  ];

  addCart(product) {
    return print(product);
  }

  List<Cartcontent> get allcart {
    return [...cartitem];
  }
}
