import 'package:ecomm_app/models/viewallmodel.dart';
import 'package:flutter/material.dart';

class CartProvider extends ChangeNotifier {
  List<ViewAllModel> cart = [];
  List<ViewAllModel> get getCart => cart;
  int fq = 0;
  static double _total = 0.0;
  void addItemstocart(ViewAllModel item, int quantity) {
    for (int i = 0; i < quantity; i++) {
      cart.add(item);
      _total = _total + double.parse(item.price);
    }

    notifyListeners();
  }

  void removeFromCart(ViewAllModel item) {
    cart.remove(item);
    _total = _total - double.parse(item.price);
    notifyListeners();
  }

  static double get getTotal => _total;
}
