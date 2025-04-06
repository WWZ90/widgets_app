import 'package:flutter/material.dart';

class DialogsScreen extends StatelessWidget {
  static const String name = 'dialogs_screen';
  const DialogsScreen({super.key});

  @override
  Widget build(t) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialogs Screen'),
        centerTitle: true,
      ),
      body: const Placeholder(),
    );
  }
}