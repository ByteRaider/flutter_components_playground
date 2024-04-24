import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  final options = const ['One', 'Two', 'Three', 'Four', 'Five'];
  const ListView1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('List View1 Screen')),
        body: ListView(children: [
          ...options.map((e) => ListTile(
                leading: const Icon(Icons.list),
                title: Text(e),
                trailing: const Icon(Icons.chevron_right),
              ))

          // ListTile(leading: Icon(Icons.list), title: Text('Item 1')),
        ]));
  }
}
