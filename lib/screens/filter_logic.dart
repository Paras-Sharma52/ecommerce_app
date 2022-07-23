import 'package:flutter/material.dart';

class Filterlog extends StatefulWidget {
  const Filterlog({Key? key}) : super(key: key);

  @override
  State<Filterlog> createState() => _FilterlogState();
}

class _FilterlogState extends State<Filterlog> {
  List<String> itemsList = ['Price Low', 'Price High'];
  String? selected = 'Price Low';
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Padding(
          padding: EdgeInsets.all(4.0),
          child: Text(
            'Products Filter',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blue),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  icon: const Icon(
                    Icons.filter_alt_sharp,
                    color: Colors.blue,
                  ),
                  items: itemsList
                      .map((price) => DropdownMenuItem<String>(
                          value: price,
                          child: Text(
                            price,
                            style: const TextStyle(color: Colors.purple),
                          )))
                      .toList(),
                  onChanged: (value) => setState(
                    () {
                      selected = value;
                      if (selected == 'Price Low') {
                        // for (int i = 0; i <= products.length; ++i) {
                        //   products[i].price;
                        // }
                      }
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
