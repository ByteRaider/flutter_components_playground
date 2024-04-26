import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({super.key});
  void displayDialog(BuildContext context) {
    showDialog(
        barrierDismissible: true,
        context: context,
        builder: (context) {
          return AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusDirectional.circular(20)),
              title: const Text('This is an alert'),
              icon: const Icon(Icons.warning_amber_rounded,
                  color: Colors.red, size: 40),
              content: const Column(mainAxisSize: MainAxisSize.min, children: [
                Text('This is content inside an alert'),
              ]),
              actions: [
                TextButton(
                  child: const Text('Cancel'),
                  onPressed: () => Navigator.pop(context),
                )
              ]);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Alert Screen')),
      body: Center(
        child: ElevatedButton(
            onPressed: () => displayDialog(context),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Show alert', style: TextStyle(fontSize: 20)),
            )),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(Icons.coffee_sharp),
        ),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}
