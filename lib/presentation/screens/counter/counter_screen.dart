import 'package:d_using_widgets_git/presentation/providers/counter_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

class CounterScreen extends ConsumerWidget {
  const CounterScreen({super.key});

  static const name = 'counter_screen';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int clickCounter = ref.watch(counterProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Riverpod'),
      ),
      body: Center(
        child: Text('Valor: $clickCounter',
            style: Theme.of(context).textTheme.titleLarge),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
