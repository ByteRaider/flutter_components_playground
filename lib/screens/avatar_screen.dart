import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Avatar Screen'), actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              maxRadius: 20,
              backgroundImage:
                  NetworkImage('https://wallpaperaccess.com/full/245680.jpg'),
            ),
          )
        ]),
        body: const Center(
            child: CircleAvatar(
          maxRadius: 150,
          backgroundImage:
              NetworkImage('https://wallpaperaccess.com/full/245680.jpg'),
          foregroundImage:
              NetworkImage('https://wallpaperaccess.com/full/245680.jpg'),
          backgroundColor: Colors.transparent,
          child: Text('Avatar'),
          // foregroundImage: NetworkImage('https://wallpaperaccess.com/full/245680.jpg'),
          // backgroundColor: Colors.transparent,
        )));
  }
}
