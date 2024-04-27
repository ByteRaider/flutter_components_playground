import 'package:flutter/material.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Inputs & Forms Screen')),
        body: SingleChildScrollView(
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(children: [
                  TextFormField(
                      autofocus: true,
                      initialValue: '',
                      textCapitalization: TextCapitalization.words,
                      onChanged: (value) {
                        print('value: $value');
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'This is a required field';
                        }
                        return value.length < 3 ? 'Too short' : null;
                      },
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                          ),
                          borderSide: BorderSide(color: Colors.red),
                        ),
                        hintText: 'Enter your name',
                        labelText: 'Name',
                        helperText: 'At lease 3 letters',
                        suffixIcon: Icon(Icons.person),
                        prefixIcon: Icon(Icons.abc),
                        icon: Icon(Icons.person_outline),
                      ))
                ]))));
  }
}
