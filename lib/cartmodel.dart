import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  //list of item on sale
  final List _shopItems = const [
    ['Avocado', '4.00', 'images/avocado.png', Colors.green],
    ['Banana', '20.00', 'images/banana.png', Colors.yellow],
    ['Chicken', '50.00', 'images/chicken.png', Colors.brown],
    ['Water', '5.00', 'images/water.png', Colors.blue],
  ];

  //list of cart item
  List _cartItems = [];

  get shopItems => _shopItems;

  get cartItems => _cartItems;

  //add item to cart
  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  //remove item from cart
  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  //calculate total price
  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < _cartItems.length; i++) {
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
    // 2 is for two decimal place
  }
}
