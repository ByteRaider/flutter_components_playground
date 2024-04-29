import 'dart:math';
import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double _width = 50;
  double _height = 50;
  Color _color = Colors.indigo;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);

  void changeShape() {
    final random = Random();
    _width = random.nextInt(300).toDouble() + 70;
    _height = random.nextInt(300).toDouble() + 70;
    _color = Color.fromARGB(
        random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
    _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble() + 10);

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeOutCubic,
          width: _width,
          height: _height,
          decoration: BoxDecoration(borderRadius: _borderRadius, color: _color),
        )),
        floatingActionButton: FloatingActionButton(
          onPressed: () => changeShape(),
          backgroundColor: Colors.blue,
          child: const Icon(
            Icons.play_arrow,
            size: 30,
          ),
        ));
  }
}
