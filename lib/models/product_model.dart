import 'package:flutter/material.dart';

class ProductModel {
  final int id;
  final String title, desc;
  final List<Color> colors;
  final double rating, price;
  final List<String> imgpath;
  bool isfav, isPopular;

  ProductModel(
      {required this.id,
      required this.title,
      required this.desc,
      required this.colors,
      this.rating = 0.0,
      required this.price,
      required this.imgpath,
      this.isfav = false,
      this.isPopular = false});
}

List<ProductModel> productsList = [
  ProductModel(
    id: 1,
    title: 'Wireless Controller for ps4',
    desc: "The PlayStation 4 (PS4) controller, known as the DualShock 4, is a sleek and ergonomic device designed for immersive gaming experiences. It features two analog sticks, a directional pad",
    isfav: true,
    rating: 4.8,
    price: 69.00,
    imgpath: ["assests/images/Image Popular Product 1.png","assests/images/ps4_console_white_2.png","assests/images/ps4_console_white_3.png","assests/images/ps4_console_white_4.png"],
    colors: [const Color(0xFFF6625E), Colors.black, Colors.purple, Colors.white],
  ),
  ProductModel(
    id: 2,
    title: 'Nike Sport White-Man Pant',
    desc: "these pants keep you cool and dry during workouts. Versatile enough for the gym or the streets, they're your new go-to for both athleticism and style.",
    rating: 3.5,
    isfav: false,
    price: 50.55,
    imgpath: ["assests/images/Image Popular Product 2.png",],
    colors: [const Color(0xFFF6625E), Colors.black, Colors.purple, Colors.white],
  ),
  ProductModel(
    id: 3,
    title: 'Colorful Bike Helmet Hard',
    desc: "",
    rating: 4,
    isfav: false,
    price: 15.49,
    imgpath: ["assests/images/Image Popular Product 3.png",],
    colors: [const Color(0xFFF6625E), Colors.black, Colors.purple, Colors.white],
  ),
];
