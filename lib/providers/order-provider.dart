import 'package:e_food_cort/models/product.dart';
import 'package:flutter/foundation.dart';

class OrderProvider with ChangeNotifier {
  List _listOrder = [];

  List get listOrder => _listOrder;

  void createOrder(Product product) {
    _listOrder.add(product);
    notifyListeners();
  }

  void removeItem(Product product) {
    _listOrder.remove(product);
    notifyListeners();
  }
}