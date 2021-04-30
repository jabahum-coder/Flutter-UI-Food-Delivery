import 'package:flutter/material.dart';
import 'package:food_delivery_ui/data/data.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart(${currentUser.cart.length})"),
      ),
      body: ListView.separated(
        itemCount: currentUser.cart.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.all(10),
            height: 100.0,
            color: Colors.red,
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return Divider(
            height: 1.0,
            color: Colors.grey,
          );
        },
      ),
    );
  }
}
