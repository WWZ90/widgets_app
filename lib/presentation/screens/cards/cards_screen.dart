import 'package:flutter/material.dart';

class CardsScreen extends StatelessWidget {
  static const String name = 'cards_screen';
  const CardsScreen({super.key});

  @override
  Widget build(t) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards Screen'),
        centerTitle: true,
      ),
      body: const Placeholder(),
    );
  }
}