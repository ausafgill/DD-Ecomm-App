import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecomm_app/models/hotsalesmodel.dart';
import 'package:ecomm_app/widgets/categories.dart';
import 'package:ecomm_app/widgets/hotsales.dart';
import 'package:ecomm_app/widgets/sales_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextFormField(
          decoration: InputDecoration(
            hintText: 'Search',
            fillColor: Colors.grey.shade300,
            filled: true,
            prefixIcon: Icon(
              Icons.search,
              color: Colors.deepOrange,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide.none,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                  20), // Circular border for enabled state
              borderSide: BorderSide.none, // Remove border for enabled state
            ),
          ),
        ),
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        toolbarHeight: 50,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SalesSlider(),
          Categories(),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      'Hot Sales',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      FontAwesomeIcons.fire,
                      color: Colors.deepOrange,
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, 'view_all');
                  },
                  child: Text(
                    'View All',
                    style: TextStyle(color: Colors.deepOrange),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          HotSalesCatalog()
        ],
      ),
    );
  }
}
