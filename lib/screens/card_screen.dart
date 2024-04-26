import 'package:flutter/material.dart';
import 'package:fl_components/widgets/widgets.dart';

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
            CustomCardType1(),
            CustomCardType2(
              name: 'Some random text',
              imageUrl:
                  'https://wallup.net/wp-content/uploads/2016/01/102787-nature-mountain-river-landscape.jpg',
            ),
            CustomCardType2(
              imageUrl: 'https://wallpaperaccess.com/full/245680.jpg',
            ),
            CustomCardType2(
              imageUrl: 'https://images8.alphacoders.com/102/1023910.jpg',
            ),
          ]),
    );
  }
}
