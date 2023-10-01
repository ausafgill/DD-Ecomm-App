import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:ecomm_app/views/cart_screen.dart';
import 'package:ecomm_app/views/confirmorder.dart';
import 'package:ecomm_app/views/favorites.dart';
import 'package:ecomm_app/views/home_screen.dart';
import 'package:ecomm_app/views/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int pageIndex = 0;
  final List<Widget> pages = [
    HomeScreen(),
    CartScreen(),
    FavouriteScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages[pageIndex],
        bottomNavigationBar: AnimatedBottomNavigationBar(
            icons: [
              CupertinoIcons.home,
              CupertinoIcons.cart,
              CupertinoIcons.heart,
              CupertinoIcons.profile_circled
            ],
            activeColor: Color(0xFFDB3022),
            inactiveColor: Colors.black,
            activeIndex: pageIndex,
            splashColor: Color(0xFFDB3022),
            gapLocation: GapLocation.none,
            onTap: (index) {
              setState(() {
                pageIndex = index;
              });
            }));
  }
}
