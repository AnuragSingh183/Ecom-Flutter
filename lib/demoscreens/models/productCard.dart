import 'package:flutter/material.dart';

class HomeProductCard {
  String name;
  String image;
  double rating;
  String price;
  String brand;
  String description;
  int totalReviews;
  // List<String> sizes;
  // List<ProductColor> colors;
  //int quantity = 0;

  HomeProductCard({
    required this.name,
    required this.image,
    required this.brand,
    required this.price,
    required this.rating,
    required this.description,
    required this.totalReviews,
    // required this.sizes,
    // required this.colors,
    //required this.quantity
  });
}

class ProductColor {
  final String colorName;
  final MaterialColor color;

  ProductColor({required this.colorName, required this.color});
}
