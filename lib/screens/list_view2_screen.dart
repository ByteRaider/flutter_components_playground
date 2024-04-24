import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  final options = const ['One', 'Two', 'Three', 'Four', 'Five'];
  const ListView2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('List View 2 Screen',
              style: TextStyle(color: Colors.white)),
          elevation: 1,
          backgroundColor: Colors.indigo,
        ),
        body: ListView.separated(
          itemCount: options.length,
          itemBuilder: (context, index) => ListTile(
            leading: const Icon(Icons.list),
            title: Text(options[index]),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              final game = options[index];
              print(game);
            },
          ),
          separatorBuilder: (_, __) => const Divider(),
        ));
  }
}
