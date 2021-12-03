import 'package:flutter/material.dart';
import 'package:lo_menu/Screens/Menu/Details/components/add_to_cart.dart';
import 'package:lo_menu/Screens/Menu/Details/components/cart_counter.dart';
import 'package:lo_menu/Screens/Menu/Details/components/counter_with_fav_btn.dart';
import 'package:lo_menu/Screens/Menu/Details/components/product_title_with_image.dart';
import 'package:lo_menu/shared/models/product.dart';

import 'descricao.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  //height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 10,
                      ),
                      Descricao(product: product),
                      SizedBox(
                        height: 10,
                      ),
                      CounterWithFavBtn(),
                      SizedBox(
                        height: 10,
                      ),
                      AddToCart(product: product),
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product)
              ],
            ),
          )
        ],
      ),
    );
  }
}
