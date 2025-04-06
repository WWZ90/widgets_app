import 'package:flutter/material.dart';

class WidgetsScreen extends StatelessWidget {
  static const String name = 'widgets_screen';
  const WidgetsScreen({super.key});

  @override
  Widget build(t) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widgets Screen'),
        centerTitle: true,
      ),
      body: const Placeholder(),
    );
  }
}