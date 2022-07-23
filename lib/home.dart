import 'package:ecommerce_app/screens/cart%20screen/cart.dart';
import 'package:ecommerce_app/screens/filter_logic.dart';
import 'package:ecommerce_app/screens/body.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarBuild(false, context, 'Home'),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Filterlog(),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Body(),
            ),
          ),
        ],
      ),
    );
  }
}

AppBar appbarBuild(bool isDetail, context, String title) {
  return AppBar(
    title: Text(
      title,
      style: const TextStyle(color: Colors.blue, fontWeight: FontWeight.w900),
    ),
    centerTitle: true,
    backgroundColor: Colors.white,
    elevation: 0,
    leading: isDetail
        ? IconButton(
            onPressed: () {
              Navigator.pop(
                context,
                MaterialPageRoute(
                  builder: (context) => const Home(),
                ),
              );
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.blue,
            ))
        : IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const Home(),
                ),
              );
            },
            icon: const Icon(
              Icons.home,
              color: Colors.blue,
            )),
    actions: [
      IconButton(
        onPressed: () {},
        icon: Image.asset(
          'lib/assets/images/icons-search.png',
          fit: BoxFit.cover,
          height: 60,
          width: 80,
        ),
      ),
      const SizedBox(
        width: 8,
      ),
      IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Carts(),
              ),
            );
          },
          icon: Image.asset(
            'lib/assets/images/cart.png',
            fit: BoxFit.cover,
            height: 100,
            width: 100,
          )
          // ImageIcon(
          //   AssetImage('lib/assets/images/cart.png'),
          //   color: Colors.blue,
          // ),
          ),
    ],
  );
}
