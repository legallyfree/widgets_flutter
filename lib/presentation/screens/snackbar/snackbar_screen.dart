import 'package:flutter/material.dart';

class SnackbarScreen extends StatelessWidget {
  const SnackbarScreen({super.key});

  static const name = 'snackbar_screen';

  void showCustomSnackbar(BuildContext context) {
    final clearSnackbar = ScaffoldMessenger.of(context).clearSnackBars();

    clearSnackbar;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text("Hola mundo"),
        action: SnackBarAction(
          label: "ok!",
          onPressed: () {
            clearSnackbar;
          },
        ),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Snackbar and Dialogs"),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text("Mostrar snackbar"),
        icon: const Icon(Icons.remove_red_eye_outlined),
        onPressed: () {
          showCustomSnackbar(context);
        },
      ),
    );
  }
}
