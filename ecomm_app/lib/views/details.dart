import 'package:ecomm_app/models/viewallmodel.dart';
import 'package:ecomm_app/utils/provider/cartprovider.dart';
import 'package:ecomm_app/views/view_all.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailsScreen extends StatefulWidget {
  ViewAllModel item;
  DetailsScreen({super.key, required this.item});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  int quantity = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        foregroundColor: Colors.deepOrange,
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView(
            children: [
              Image.asset(
                widget.item.imgPath,
                height: 500,
                width: 200,
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  widget.item.name,
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  'Description:',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  widget.item.des,
                  style: TextStyle(fontSize: 18, height: 2),
                ),
              )
            ],
          )),
          Container(
            padding: EdgeInsets.all(25),
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.deepOrange),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$ ${widget.item.price}',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                    Row(
                      children: [
                        Container(
                          height: 35,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade100,
                              shape: BoxShape.circle),
                          child: IconButton(
                              onPressed: () {
                                setState(() {
                                  if (quantity > 0) {
                                    quantity--;
                                  }
                                });
                              },
                              icon: Icon(Icons.remove)),
                        ),
                        SizedBox(
                          width: 10,
                          child: Text(
                            quantity.toString(),
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          height: 35,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade100,
                              shape: BoxShape.circle),
                          child: IconButton(
                              onPressed: () {
                                setState(() {
                                  quantity++;
                                });
                              },
                              icon: Icon(Icons.add)),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: addtoCart,
                  child: Container(
                    height: 50,
                    width: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.grey.shade100),
                    child: Center(
                        child: Text(
                      'Add to Cart',
                      style: TextStyle(
                          color: Colors.deepOrange,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  void addtoCart() {
    if (quantity > 0) {
      final cartData = context.read<CartProvider>();
      cartData.addItemstocart(widget.item, quantity);
      showDialog(
          barrierDismissible: false,
          context: context,
          builder: (context) => AlertDialog(
                backgroundColor: Colors.deepOrange,
                content: Text('Successfully added'),
                actions: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.done,
                        color: Colors.white,
                      ))
                ],
              ));
    }
  }
}
