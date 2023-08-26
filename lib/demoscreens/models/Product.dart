import 'package:flutter/material.dart';

class Product {
  final String image, title;
  final int price;
  final Color bgColor;

  Product({
    required this.image,
    required this.title,
    required this.price,
    this.bgColor = const Color(0xFFEFEFF2),
  });
}

List<Product> demo_product = [
  Product(
    image: "assets/apparel1.jpg",
    title: "Long Sleeve Shirts",
    price: 165,
    bgColor: const Color(0xFFFEFBF9),
  ),
  Product(
    image: "assets/lamp.png",
    title: "Casual Henley Shirts",
    price: 99,
  ),
  Product(
    image: "assets/apparel5.jpg",
    title: "Curved Hem Shirts",
    price: 180,
    bgColor: const Color(0xFFF8FEFB),
  ),
];
