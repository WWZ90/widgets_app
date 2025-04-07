import 'dart:math' show Random;
import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  static const String name = 'animated_screen';
  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double width = 50;
  double height = 100;
  Color color = Colors.indigo;
  double borderRadius = 10;

  void changeShape() {
    final random = Random();
    width = random.nextInt(300) + 120;
    height = random.nextInt(300) + 120;
    borderRadius = random.nextInt(100) + 20;

    color = Color.fromRGBO(
      random.nextInt(255),
      random.nextInt(255),
      random.nextInt(255),
      1,
    );

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Animated Container')),
      floatingActionButton: FloatingActionButton(
        onPressed: changeShape,
        child: Icon(Icons.play_arrow_rounded),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(milliseconds: 300),
          curve: Curves.bounceOut,
          width: width <= 0 ? 0 : width,
          height: height <= 0 ? 0 : height,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(borderRadius < 0 ? 0 : borderRadius),
          ),
        ),
      ),
    );
  }
}
