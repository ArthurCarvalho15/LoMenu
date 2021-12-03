import 'package:flutter/material.dart';
import 'package:lo_menu/shared/models/product.dart';

class Descricao extends StatelessWidget {
  const Descricao({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
      child: Text(
        product.descricao,
        style: TextStyle(height: 1.5),
      ),
    );
  }
}
