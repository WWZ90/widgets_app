import 'package:flutter/material.dart';

class WidgetsScreen extends StatelessWidget {
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