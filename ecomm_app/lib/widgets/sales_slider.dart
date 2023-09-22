import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SalesSlider extends StatelessWidget {
  SalesSlider({
    super.key,
  });
  List<String> images = [
    'assets/freed.png',
    'assets/cover.jpg',
    'assets/cover.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.30,
      child: CarouselSlider.builder(
        options: CarouselOptions(
            height: 180,
            autoPlay: true,
            autoPlayAnimationDuration: Duration(seconds: 1),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            viewportFraction: 0.8,
            pageSnapping: true),
        itemCount: images.length,
        itemBuilder: (context, index, PageViewIndex) {
          return Container(
            height: 180,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Color(0xFFFFF0DD),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset(
              images[index],
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}
