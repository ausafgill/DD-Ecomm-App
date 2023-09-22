import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  Categories({
    super.key,
  });
  List<String> itemImages = [
    'assets/shoes.png',
    'assets/clothing.png',
    'assets/cutlery.png',
    'assets/music.png',
    'assets/cutlery.png',
    'assets/house-decoration.png',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: itemImages.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                width: 70,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey.shade300,
                ),
                child: Image.asset(
                  itemImages[index],
                  height: 50,
                  width: 60,
                ),
              ),
            );
          }),
    );
  }
}
