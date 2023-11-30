import 'package:d_using_widgets_git/presentation/providers/theme_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

class ThemeScreen extends ConsumerWidget {
  const ThemeScreen({super.key});

  static const String name = 'theme_screen';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkMode = ref.watch(isDarkProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme Change'),
        actions: [
          IconButton(
            icon: Icon(isDarkMode
                ? Icons.light_mode_outlined
                : Icons.dark_mode_outlined),
            onPressed: () {
              ref.read(isDarkProvider.notifier).update((state) => !state);
            },
          )
        ],
      ),
      body: const _ThemeChangerView(),
    );
  }
}

class _ThemeChangerView extends ConsumerWidget {
  const _ThemeChangerView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<Color> colors = ref.watch(colorListProvider);
    final int selectedColor = ref.watch(selectedColorProvider);

    return ListView.builder(
      itemCount: colors.length,
      itemBuilder: (BuildContext context, int index) {
        final Color color = colors[index];
        return RadioListTile(
          title: Text('Este color', style: TextStyle(color: color)),
          subtitle: Text('${color.value}'),
          activeColor: color,
          value: index,
          groupValue: selectedColor,
          onChanged: (value) {
            ref.read(selectedColorProvider.notifier).state = index;
          },
        );
      },
    );
  }
}
