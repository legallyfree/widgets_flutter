import 'package:d_using_widgets_git/config/router/app_router.dart';
import 'package:d_using_widgets_git/config/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "Flutter Widgets",
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: Apptheme(selectedColor: 8).getTheme(),
    );
  }
}
