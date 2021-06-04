import 'package:flutter/material.dart';
import 'package:lab3/ShoppingApp/ItemCards.dart';
import './ShopingCounter.dart';

class ShoppingApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ShoppingPage(title: 'Shopping app'),
    );
  }
}

class ShoppingPage extends StatefulWidget {
  ShoppingPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _ShoppingPageState createState() => _ShoppingPageState();
}

class _ShoppingPageState extends State<ShoppingPage> {
  int _counter = 0;

  void addToCart() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          Padding(padding: EdgeInsets.only(right: 30.0), child: ShopingCounter(amount: _counter),),
        ],
      ),
      body: ListView(children: [
        ItemCards(
                imagePaths: [
                  'assets/borsh.jpg',
                  'assets/coffee.jpg',
                  'assets/spaghetti.jpg',
                ],
                blockSize: 310,
                addToCart: addToCart,
        )
      ]),
    );
  }
}
