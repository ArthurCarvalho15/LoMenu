import 'package:flutter/material.dart';

class Product {
  final String imagem, titulo, descricao;
  final int id;
  final double preco;
  final Color color;
  Product({
    required this.id,
    required this.imagem,
    required this.titulo,
    required this.preco,
    required this.descricao,
    required this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      titulo: 'Frango Assado',
      preco: 24.36,
      descricao: dummyText,
      imagem: 'assets/images/frango.png',
      color: Colors.amber.shade300),
];

String dummyText = "Texto teste só pra testar os testes testados";
