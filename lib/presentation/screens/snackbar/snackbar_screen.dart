import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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

  void showCustomDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text("¿Estas seguro?"),
        content: const Text(
            "Proident id dolor deserunt ad irure fugiat cillum fugiat ipsum do aute adipisicing tempor. Adipisicing ut consequat irure ex ad tempor commodo enim culpa officia sit nisi proident tempor. Incididunt nostrud minim enim quis culpa incididunt sunt ullamco. Commodo aliquip irure aute nulla esse velit ut cillum non eu do velit. Lorem est et consectetur sunt anim id. Adipisicing esse magna et magna non ipsum reprehenderit in."),
        actions: [
          TextButton(
            onPressed: () => context.pop(),
            child: const Text("Cancelar"),
          ),
          FilledButton(
            onPressed: () {},
            child: const Text("Aceptar"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Snackbar and Dialogs"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: () {
                showAboutDialog(
                  context: context,
                  children: [
                    const Text(
                        "Consectetur adipisicing consectetur minim excepteur commodo magna occaecat sit enim officia officia. In id est elit qui irure veniam duis incididunt irure irure dolor dolor consectetur et. Eu elit ullamco labore in. Deserunt reprehenderit deserunt adipisicing sit ipsum ea. Nisi id excepteur Lorem officia excepteur duis fugiat velit sit sunt enim consequat incididunt.")
                  ],
                );
              },
              child: const Text("Licencias usadas"),
            ),
            FilledButton.tonal(
              onPressed: () {
                showCustomDialog(context);
              },
              child: const Text("Mostrar dialogo"),
            ),
          ],
        ),
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
