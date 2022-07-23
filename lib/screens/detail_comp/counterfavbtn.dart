import 'package:ecommerce_app/screens/detail_comp/counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Counterbtn extends StatelessWidget {
  const Counterbtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Counter(),
        Container(
          padding: const EdgeInsets.all(8),
          height: size.height / 4,
          width: size.width / 8,
          decoration: const BoxDecoration(
            color: Color(0xFFFF6464),
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset("lib/assets/icons/heart.svg"),
        )
      ],
    );
  }
}
