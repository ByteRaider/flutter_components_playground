import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Screen'),
      ),
      body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            Card(
                child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.photo_album, color: Colors.blue),
                  title: Text('I\'m a tit;e'),
                  subtitle: Text('I\'m a subtitle'),
                )
              ],
            )),
          ]),
    );
  }
}
