import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/counter_provider.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

class CounterScreen extends ConsumerWidget {
  static const String name = 'counter_screen';
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context).textTheme;
    final int clickCounter = ref.watch(counterProvider);
    final bool isDarkMode = ref.watch(isDarkModeProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Screen'),
        actions: [
          IconButton(
            onPressed: () {
              ref
                  .read(isDarkModeProvider.notifier)
                  .update((state) => !isDarkMode);
            },
            icon: isDarkMode ? Icon(Icons.dark_mode_outlined) : Icon(Icons.light_mode_outlined),
          ),
        ],
      ),
      body: Center(
        child: Text('Valor: $clickCounter', style: theme.titleLarge),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          ref.read(counterProvider.notifier).state++;
          //ref.read(counterProvider.notifier).update((state) => state = 0);
        },
      ),
    );
  }
}
