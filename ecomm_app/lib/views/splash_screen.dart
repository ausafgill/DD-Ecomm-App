import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushNamed(context, 'main_screen');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
              opacity: 0.4,
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/splash1.png',
              ))),
      child: Icon(
        Icons.shopping_cart,
        color: Color.fromARGB(255, 238, 80, 80),
        size: 200,
      ),
    );
  }
}
