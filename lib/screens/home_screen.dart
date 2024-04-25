import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fluter Components Playground'),
        elevation: 0,
      ),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return null;
        },
        separatorBuilder: (BuildContext context, int index) {
          return const Divider();
        },
        itemCount: 10,
      ),
    );
  }
}
