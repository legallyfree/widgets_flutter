import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({super.key});

  static const String name = 'buttons_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Buttons Screen"),
      ),
      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: () {
          context.pop();
        },
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {}, child: const Text("Elevated Button")),
            const ElevatedButton(
                onPressed: null, child: Text("Elevated Button disabled")),
            ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.access_alarm_rounded),
                label: const Text("Elevated Button Icon")),
            FilledButton(onPressed: () {}, child: const Text("Filled Button")),
            FilledButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.accessibility_new),
              label: const Text("Fillesd Button Icon"),
            ),
            OutlinedButton(
                onPressed: () {}, child: const Text("Outline Button")),
            OutlinedButton.icon(
                onPressed: () {},
                label: const Text("Outline Button Icon"),
                icon: const Icon(Icons.terminal)),
            TextButton(onPressed: () {}, child: const Text("Text button")),
            TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.add_circle),
                label: const Text("Text Button Icon")),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.app_registration_rounded)),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.app_registration_outlined),
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(colors.primary),
                iconColor: const MaterialStatePropertyAll(Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
