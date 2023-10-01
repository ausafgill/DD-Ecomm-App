import 'package:card_swiper/card_swiper.dart';
import 'package:ecomm_app/models/hotsalesmodel.dart';
import 'package:flutter/material.dart';

class HottSales extends StatelessWidget {
  const HottSales({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 300,
        width: 300,
        child: Expanded(
            child: Swiper(
          itemCount: HotSales.hotItemslist.length,
          itemWidth: 300.0,
          itemHeight: 400.0,
          layout: SwiperLayout.TINDER,
          itemBuilder: ((context, index) {
            return Stack(alignment: Alignment.bottomCenter, children: [
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(
                          HotSales.hotItemslist[index].imgpath,
                        )),
                    borderRadius: BorderRadius.circular(10)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        HotSales.hotItemslist[index].name,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Text(
                            HotSales.hotItemslist[index].rating,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.star,
                            color: Color.fromARGB(255, 255, 190, 59),
                            size: 16,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ]);
          }),
        )),
      ),
    );
  }
}
