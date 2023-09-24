import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.black,
  Colors.teal,
  Colors.redAccent,
  Colors.yellow,
  Colors.purple,
  Colors.blue,
  Colors.orange,
  Colors.pink,
];

class Apptheme {
  Apptheme({this.selectedColor = 0})
      : assert(selectedColor >= 0, "Selected color must be greater then 0"),
        assert(selectedColor < colorList.length, "Selected color must be less than ${colorList.length-1}");

  final int selectedColor;

  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: colorList[selectedColor],
    appBarTheme: const AppBarTheme(
      centerTitle: true,
    ),
  );
}
