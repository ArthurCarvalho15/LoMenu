import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lo_menu/models/product.dart';

import 'categories.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            'Pratos',
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Categories(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(20.0),
              height: 180,
              width: 160,
              decoration: BoxDecoration(
                  color: products[0].color,
                  borderRadius: BorderRadius.circular(16)),
              child: Image.asset(products[0].imagem),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Text(
                products[0].titulo,
                style: TextStyle(color: Colors.black45),
              ),
            ),
            Text(
              '\$24.36',
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        )
      ],
    );
  }
}
