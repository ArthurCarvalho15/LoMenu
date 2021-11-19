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
      preco: 35.16,
      descricao: dummyText,
      imagem: 'assets/images/frango.png',
      color: Colors.amber.shade300),
  Product(
      id: 2,
      titulo: 'Batata Frita',
      preco: 14.99,
      descricao: dummyText,
      imagem: 'assets/images/batata.png',
      color: Colors.yellow.shade100),
  Product(
      id: 3,
      titulo: 'Salada',
      preco: 21.15,
      descricao: dummyText,
      imagem: 'assets/images/salada.png',
      color: Colors.lightGreen.shade200),
  Product(
      id: 4,
      titulo: 'Parmegiana',
      preco: 27.36,
      descricao: dummyText,
      imagem: 'assets/images/parmegiana.png',
      color: Colors.red),
  Product(
      id: 5,
      titulo: 'Redbull',
      preco: 11.99,
      descricao: dummyText,
      imagem: 'assets/images/redbull.png',
      color: Colors.blue.shade800),
  Product(
      id: 6,
      titulo: 'Coca-Cola',
      preco: 5.23,
      descricao: dummyText,
      imagem: 'assets/images/cocacola.png',
      color: Colors.red.shade600),
];

String dummyText =
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras accumsan justo mauris, id consectetur erat lobortis eget. Sed eu lectus sit amet diam interdum facilisis.";
