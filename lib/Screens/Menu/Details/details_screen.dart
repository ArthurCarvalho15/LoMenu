import 'package:flutter/material.dart';
import 'package:lo_menu/Screens/Menu/Details/components/body.dart';
import 'package:lo_menu/models/product.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;
  const DetailsScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Aqui é pra setar a cor do fundo com a do produto
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body(
        product: product,
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.arrow_back_rounded),
        onPressed: () => Navigator.pop(context),
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.shopping_cart_outlined),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.search_rounded),
          onPressed: () {},
        ),
        SizedBox(
          width: 10,
        )
      ],
    );
  }
}
