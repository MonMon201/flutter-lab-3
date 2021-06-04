import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './Theme.model.dart';

class ThemePageConsumer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeModel>(
      create: (context) => ThemeModel(),
      child: Consumer<ThemeModel>(
        builder: (context, model, _) => MaterialApp(
          builder: (context, _) {
            double _height = MediaQuery.of(context).size.height;
            return Scaffold(
              body: GestureDetector(
                behavior: HitTestBehavior.opaque,
                child: Container(
                  color: model.getColor,
                  height: _height,
                  child: Center(
                    child: Text(
                      'Tap to switch theme',
                      style: TextStyle(
                          color: model.getFontColor,
                          fontSize: 22,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                onTap: model.colorUpdate,
              ),
            );
          },
        ),
      ),
    );
  }
}

class ThemePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeModel>(
      create: (context) => ThemeModel(),
      child: MaterialApp(
        builder: (context, _) => Scaffold(
          body: GestureDetector(
            behavior: HitTestBehavior.opaque,
            child: Container(
              height: MediaQuery.of(context).size.height,
              color: context.read<ThemeModel>().getColor,
              child: Center(
                child: Text(
                  'Tap to switch theme',
                  style: TextStyle(
                      color: context.read<ThemeModel>().getFontColor,
                      fontSize: 22,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            onTap: context.watch<ThemeModel>().colorUpdate,
          ),
        ),
      ),
    );
  }
}
