import 'package:d_using_widgets_git/config/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Apptheme(selectedColor: 2).getTheme(),
      home: Scaffold(
        body: Center(
          child: FilledButton(
            child: const Text('Hello World!'),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
