import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Inputs & Forms Screen')),
        body: const SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(children: [
                  CustomInputField(
                    hintText: 'Name',
                    labelText: 'Full Name',
                    helperText: 'Name with at least 6 characters',
                    keyboardType: TextInputType.name,
                  ),
                  SizedBox(height: 30),
                  CustomInputField(
                    hintText: 'Email address',
                    labelText: 'Email',
                    helperText: 'Enter your email',
                    keyboardType: TextInputType.emailAddress,
                  ),
                  CustomInputField(
                    hintText: 'Password',
                    labelText: 'Password',
                    helperText: 'Enter your password',
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                  ),
                  SizedBox(height: 30),
                ]))));
  }
}
