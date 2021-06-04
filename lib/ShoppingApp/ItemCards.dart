import 'ItemCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ItemCards extends StatelessWidget {
  final List<String> imagePaths;
  final int blockSize;
  final Function addToCart;

  ItemCards({this.imagePaths, this.blockSize, this.addToCart});

  @override
  Widget build(BuildContext context) {
    int sizeOfPictureBlock = this.blockSize - 10;
    return Container(
      height: (this.imagePaths.length * this.blockSize).toDouble(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: this
            .imagePaths
            .map((e) => ItemCard(
          imagePath: e,
          blockSize: sizeOfPictureBlock,
          addToCart: this.addToCart,
        ))
            .toList(),
      ),
    );
  }
}