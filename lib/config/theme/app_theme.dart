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
  Colors.white,
];

class AppTheme {
  AppTheme({this.selectedColor = 0, this.isDarkMode = false})
      : assert(selectedColor >= 0, "Selected color must be greater then 0"),
        assert(selectedColor < colorList.length,
            "Selected color must be less than ${colorList.length - 1}");

  final int selectedColor;
  final bool isDarkMode;

  ThemeData getTheme() => ThemeData(
        useMaterial3: true,
        brightness: isDarkMode ? Brightness.dark : Brightness.light,
        colorSchemeSeed: colorList[selectedColor],
        appBarTheme: const AppBarTheme(
          centerTitle: true,
        ),
      );
}
