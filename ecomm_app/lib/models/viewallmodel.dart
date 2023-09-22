import 'package:flutter/material.dart';

class ViewAllModel extends ChangeNotifier {
  final String name;
  final String imgPath;
  final String price;
  final String des;
  ViewAllModel(
      {required this.name,
      required this.imgPath,
      required this.price,
      required this.des});

  static List<ViewAllModel> viewAllItemsList = [
    ViewAllModel(
        name: 'Black Pant',
        imgPath: 'assets/Black Pant.png',
        price: "20",
        des: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
    ViewAllModel(
        name: 'Black T-Shirt',
        imgPath: 'assets/Black T-Shirt.png',
        price: "25",
        des: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
    ViewAllModel(
        name: 'Warm Jacket',
        imgPath: 'assets/Warm Jacket.png',
        price: "25",
        des: 'Lorem ipsum dolor sit amet.'),
    ViewAllModel(
        name: 'Brown Sweater',
        imgPath: 'assets/image2.jpg',
        price: '50',
        des: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
    ViewAllModel(
        name: 'Nike Shoes',
        imgPath: 'assets/nikeshoes.png',
        price: '80',
        des: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
    ViewAllModel(
        name: 'Ladies Bag',
        imgPath: 'assets/Ladies Bag.png',
        price: '55',
        des: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
    ViewAllModel(
        name: 'Smart Watch',
        imgPath: 'assets/smartwatch.png',
        price: '60',
        des: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
  ];
}
