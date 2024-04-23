import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  const ListView1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('List View1 Screen')),
        body: ListView(children: const [
          Text('Item 1'),
          Text('Item 2'),
        ]));
  }
}
