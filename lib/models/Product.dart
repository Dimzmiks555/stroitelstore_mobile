import 'package:flutter/material.dart';

class Product {
  final String title;
  final List<String> images;
  final List<Color> colors;
  final double price;
  final bool isPopular;


  Product({
    required this.images,
    required this.colors,
    required this.title,
    required this.price,
    this.isPopular = false,
  });

}


