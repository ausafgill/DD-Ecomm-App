import 'package:ecomm_app/models/hotsalesmodel.dart';
import 'package:ecomm_app/models/viewallmodel.dart';
import 'package:ecomm_app/views/details.dart';
import 'package:flutter/material.dart';

class HotSalesCatalog extends StatelessWidget {
  const HotSalesCatalog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 300,
        width: 300,
        child: ListView.builder(
            itemCount: HotSales.hotItemslist.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 15),
                child: Column(
                  children: [
                    Container(
                      height: 200,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(18),
                        border: Border.all(color: Colors.deepOrange, width: 2),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(18),
                        child: Image.asset(
                          HotSales.hotItemslist[index].imgpath,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          Text(HotSales.hotItemslist[index].name,
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                          SizedBox(
                            width: 10,
                          ),
                          Text(HotSales.hotItemslist[index].rating,
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                          Icon(
                            Icons.star,
                            color: Color.fromARGB(255, 255, 190, 59),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              );
            }),
      ),
    );
  }
}
