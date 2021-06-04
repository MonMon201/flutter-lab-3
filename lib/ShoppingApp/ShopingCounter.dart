import 'package:flutter/material.dart';

class ShopingCounter extends StatelessWidget {
  final amount;

  ShopingCounter({@required this.amount});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.red,
      child: Text('$amount', style: TextStyle(color: Colors.white),),
      radius: 15,
    );
  }
}
