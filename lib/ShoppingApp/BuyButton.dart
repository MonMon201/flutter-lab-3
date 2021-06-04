import 'package:flutter/material.dart';

class BuyButton extends StatelessWidget {

  BuyButton({Key key, this.addToCart}) : super(key: key);
  final Function addToCart;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        this.addToCart();
      },
      child: Container(
          padding: EdgeInsets.all(12.0),
          width: 100,
          height: 50,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 2,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
            color: Colors.green,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5),
                topRight: Radius.circular(5),
                bottomLeft: Radius.circular(5),
                bottomRight: Radius.circular(5)),
          ),
          child: Container(
            child: Text('Buy',
                style: TextStyle(
                  fontSize: 24,
                )),
          )),
    );
  }
}
