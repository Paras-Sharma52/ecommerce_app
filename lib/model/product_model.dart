import 'package:flutter/material.dart';

class Productmodel {
  final String title, image, description;
  final int price, size, id;
  final Color color;

  Productmodel(
      {required this.color,
      required this.title,
      required this.image,
      required this.description,
      required this.price,
      required this.size,
      required this.id});
}

List<Productmodel> products = [
  Productmodel(
      id: 1,
      title: "Office Code",
      price: 234,
      size: 12,
      description: dummyText,
      image: "lib/assets/images/bag_1.png",
      color: const Color(0xFF3D82AE)),
  Productmodel(
      id: 2,
      title: "Belt Bag",
      price: 100,
      size: 8,
      description: dummyText,
      image: "lib/assets/images/bag_2.png",
      color: const Color(0xFFD3A984)),
  Productmodel(
      id: 3,
      title: "Hang Top",
      price: 234,
      size: 10,
      description: dummyText,
      image: "lib/assets/images/bag_3.png",
      color: const Color(0xFF989493)),
  Productmodel(
      id: 4,
      title: "Old Fashion",
      price: 75,
      size: 11,
      description: dummyText,
      image: "lib/assets/images/bag_4.png",
      color: const Color(0xFFE6B398)),
  Productmodel(
      id: 5,
      title: "Office Code",
      price: 234,
      size: 12,
      description: dummyText,
      image: "lib/assets/images/bag_5.png",
      color: const Color(0xFFFB7883)),
  Productmodel(
    id: 6,
    title: "Office Code",
    price: 234,
    size: 12,
    description: dummyText,
    image: "lib/assets/images/bag_6.png",
    color: const Color(0xFFAEAEAE),
  ),
  Productmodel(
      id: 7,
      title: "Office Code",
      price: 80,
      size: 12,
      description: dummyText,
      image: "lib/assets/images/bag_5.png",
      color: const Color.fromARGB(255, 120, 251, 137)),
  Productmodel(
    id: 8,
    title: "Office Code",
    price: 90,
    size: 12,
    description: dummyText,
    image: "lib/assets/images/bag_6.png",
    color: const Color.fromARGB(255, 174, 174, 174),
  ),
];

String dummyText =
    "Decription is provided according to the product description must be apiling and atractive This beautiful yellow shoulder tote by Robert Matthew allows you to bring everything with you whenever you need to, but fashionably of course! Keep yourself organized with the interior and exterior pockets while getting compliments from everyone on the gorgeous gold hardware on this stunning bag.";
