import 'package:flutter/material.dart';

class ThemeModel extends ChangeNotifier {
  bool darkTheme = false;
  Color _current = Colors.yellow;
  Color _fontColor;
  void colorUpdate() {
    _current = darkTheme ? Colors.yellow : Colors.black;
    _fontColor= darkTheme ? Colors.black : Colors.white;
    darkTheme = !darkTheme;
    notifyListeners();
  }

  Color get getColor => _current;

  Color get getFontColor => _fontColor;
}



