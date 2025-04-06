import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.red,
  Colors.green,
  Colors.blue,
  Colors.yellow,
  Colors.orange,
  Colors.purple,
  Colors.pink,
  Colors.teal,
  Colors.cyan,
  Colors.lime,
];

class AppTheme {
  final int selectecColor;

  AppTheme({this.selectecColor = 0})
    : assert(selectecColor >= 0 && selectecColor < colorList.length);

  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: colorList[selectecColor],
    appBarTheme: AppBarTheme(centerTitle: true),
  );
}
