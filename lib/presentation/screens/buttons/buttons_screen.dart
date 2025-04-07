import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  static const String name = 'buttons_screen';
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Buttons'), centerTitle: true),
      body: _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.pop();
        },
        child: const Icon(Icons.arrow_back_ios_new_rounded),
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Wrap(
        spacing: 10,
        runSpacing: 10,
        alignment: WrapAlignment.center,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {},
            child: const Text('Elevated Button'),
          ),
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.add_alarm),
            label: const Text('Elevated Icon Button'),
          ),
          OutlinedButton(
            onPressed: () {},
            child: const Text('Outlined Button'),
          ),
          OutlinedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.access_alarm),
            label: const Text('Outlined Icon Button'),
          ),
          TextButton(onPressed: () {}, child: const Text('Text Button')),
          TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.accessibility_new),
            label: const Text('Text Icon Button'),
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
          FloatingActionButton(onPressed: () {}, child: const Icon(Icons.add)),
          FilledButton(onPressed: () {}, child: const Text('Filled Button')),
          FilledButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.accessible),
            label: const Text('Filled Button'),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.accessibility_new),
            tooltip: 'Icon Button',
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(colors.primary),
              iconColor: WidgetStateProperty.all(Colors.white),
            ),
          ),
          CustomButton(),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
            child: Text('Hello world', style: TextStyle(color: Colors.white)),
          ),
        ),
      ),
    );
  }
}
