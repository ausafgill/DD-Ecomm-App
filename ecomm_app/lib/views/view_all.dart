import 'package:ecomm_app/models/viewallmodel.dart';
import 'package:ecomm_app/utils/provider/cartprovider.dart';
import 'package:ecomm_app/views/details.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ViewAll extends StatefulWidget {
  ViewAll({
    super.key,
  });

  @override
  State<ViewAll> createState() => _ViewAllState();
}

enum SortingOrder { highToLow, lowToHigh }

class _ViewAllState extends State<ViewAll> {
  int quantity = 0;
  SortingOrder _currentSortingOrder = SortingOrder.lowToHigh;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text(
          'All Items',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.sort),
            onPressed: () {
              FilterMethod(context);
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: ViewAllModel.viewAllItemsList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        //Navigator.pushNamed(context, 'details',arguments: ViewAllModel.viewAllItemsList[index]);

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailsScreen(
                                    item:
                                        ViewAllModel.viewAllItemsList[index])));
                      },
                      child: Card(
                        child: Container(
                          height: 150,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(8)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Image.asset(
                                  ViewAllModel.viewAllItemsList[index].imgPath,
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      ViewAllModel.viewAllItemsList[index].des,
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      ViewAllModel.viewAllItemsList[index].name,
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 15),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '\$ ${ViewAllModel.viewAllItemsList[index].price}',
                                            style: TextStyle(
                                                color: Colors.deepOrange,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Container(
                                            height: 30,
                                            width: 90,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                color: Colors.deepOrange),
                                            child: Center(
                                                child: Text(
                                              'Add to Cart',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            )),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }

  Future<dynamic> FilterMethod(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
              backgroundColor: Colors.deepOrange,
              content: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: _sortLowtoHigh,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text('Low To High'),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: _sortHightoLow,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text(
                          'High To Low',
                        ),
                      ),
                    ),
                  )
                ],
              ),
              title: Text(
                'Filter',
                style: TextStyle(color: Colors.white),
              ),
            ));
  }

  void _sortHightoLow() {
    setState(() {
      if (_currentSortingOrder == SortingOrder.lowToHigh) {
        ViewAllModel.viewAllItemsList
            .sort((a, b) => b.price.compareTo(a.price));
        _currentSortingOrder = SortingOrder.highToLow;
      }
    });
  }

  void _sortLowtoHigh() {
    setState(() {
      if (_currentSortingOrder == SortingOrder.highToLow) {
        ViewAllModel.viewAllItemsList
            .sort((a, b) => a.price.compareTo(b.price));
        _currentSortingOrder = SortingOrder.lowToHigh;
      }
    });
  }
}
