import 'package:flutter/material.dart';

class Product {
   String image, title, description;
   int price, size, id;
   Color color ;
  Product({
    this.id=0,
    this.image='',
    this.title='',
    this.price=0,
    this.description='',
    this.size=0,
    this.color=Colors.white,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Calça de Ganga",
      price: 3234,
      size: 12,
      description: dummyText,
      image: 'assets/images/calcasdeganga.png',
      color: Color(0xFF3D82AE)),
  Product(
      id: 2,
      title: "Bermuda Shorts",
      price: 2234,
      size: 8,
      description: dummyText,
      image: 'assets/images/BermudaShorts.png',
      color: Color(0xFFD3A984)),
  Product(
      id: 3,
      title: "T-shirt Polo",
      price: 4334,
      size: 10,
      description: dummyText,
      image: 'assets/images/T-shirtPolo.png',
      color: Color(0xFF989493)),
  Product(
      id: 4,
      title: "Camisola com Capuz",
      price: 3334,
      size: 11,
      description: dummyText,
      image: 'assets/images/Camisolacapuz.png',
      color: Color(0xFFE6B398)),
  Product(
      id: 5,
      title: "Chapeu de basebol",
      price: 1034,
      size: 12,
      description: dummyText,
      image: 'assets/images/bone.png',
      color: Color(0xFFFB7883)),
  Product(
    id: 6,
    title: "Bolsa Louis Vuitton",
    price: 2234,
    size: 12,
    description: dummyText,
    image: 'assets/images/bolsa.png',
    color: Color(0xFFAEAEAE),
  ),
];

String dummyText =
    'Produzida em um tecido leve e macio, a camiseta MODELO X foi criada especialmente para aqueles que não abrem mão do conforto em seu dia a dia. Disponível em diversas opções de estampas, ela é perfeita para quem tem um estilo irreverente e sente orgulho de destacar sua personalidade!';
