import 'package:flutter/material.dart';

class Product {
  final String imagem, titulo, descricao, tipo;
  final int id;
  final double preco;
  final Color color;
  final bool fav;
  Product({
    required this.id,
    required this.imagem,
    required this.titulo,
    required this.preco,
    required this.descricao,
    required this.color,
    required this.tipo,
    required this.fav,
  });
}

List<Product> products = [
  Product(
      id: 1,
      tipo: 'normal',
      titulo: 'Frango Assado',
      preco: 35.16,
      descricao: dummyText,
      imagem: 'assets/images/frango.png',
      color: Colors.amber.shade300,
      fav: false),
  Product(
      id: 2,
      tipo: 'normal',
      titulo: 'Batata Frita',
      preco: 14.99,
      descricao: dummyText,
      imagem: 'assets/images/batata.png',
      color: Colors.yellow.shade100,
      fav: false),
  Product(
      id: 3,
      tipo: 'vegano',
      titulo: 'Salada',
      preco: 21.15,
      descricao: dummyText,
      imagem: 'assets/images/salada.png',
      color: Colors.lightGreen.shade200,
      fav: false),
  Product(
      id: 4,
      tipo: 'normal',
      titulo: 'Parmegiana',
      preco: 27.36,
      descricao: dummyText,
      imagem: 'assets/images/parmegiana.png',
      color: Colors.red,
      fav: false),
  Product(
      id: 5,
      tipo: 'bebida',
      titulo: 'Redbull',
      preco: 11.99,
      descricao: dummyText,
      imagem: 'assets/images/redbull.png',
      color: Colors.blue.shade800,
      fav: false),
  Product(
      id: 6,
      tipo: 'bebida',
      titulo: 'Coca-Cola',
      preco: 5.23,
      descricao: dummyText,
      imagem: 'assets/images/cocacola.png',
      color: Colors.red.shade600,
      fav: false),
];

String dummyText =
    "Aqui nós temos um pequeno texto sobre o prato em questão. Informações como sua composição, sabores, e tudo o que lhe torna mais atrativo estão contidos nesse texto";
