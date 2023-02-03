import 'package:flutter/material.dart';
import 'package:groceryshop/cartmodel.dart';
import 'package:provider/provider.dart';
import 'intropage.dart';

void main() {
  runApp(const GroceryShop());
}

class GroceryShop extends StatelessWidget {
  const GroceryShop({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: IntroPage(),
      ),
    );
  }
}
