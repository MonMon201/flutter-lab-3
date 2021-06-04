import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lab3/ShoppingApp/BuyButton.dart';

class ItemCard extends StatelessWidget {
  final String imagePath;
  final int blockSize;
  final Function addToCart;

  ItemCard({this.imagePath, this.blockSize, this.addToCart});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: this.blockSize.toDouble(),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.only(  
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10)),
        ),
        child: Column(children: [
          Expanded(
              child: Padding(child: Image(
                image: AssetImage(this.imagePath),
              ), padding: EdgeInsets.all(12.0),)),
    Container(
    padding: EdgeInsets.all(12.0),
    child: Container(
    alignment: Alignment.center,
    child: BuyButton(addToCart: this.addToCart,),
    ),
    ),
        ]));
  }
}