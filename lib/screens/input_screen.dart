import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();
    final Map<String, String> formValues = {
      'first_name': 'First Name',
      'last_name': 'Last Name',
      'email': 'Email',
      'password': 'Password',
      'role': 'Role'
    };
    return Scaffold(
        appBar: AppBar(title: const Text('Inputs & Forms Screen')),
        body: SingleChildScrollView(
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Form(
                  key: myFormKey,
                  child: Column(children: [
                    const CustomInputField(
                      hintText: 'Name',
                      labelText: 'Full Name',
                      helperText: 'Name with at least 6 characters',
                      keyboardType: TextInputType.name,
                    ),
                    const SizedBox(height: 30),
                    const CustomInputField(
                      hintText: 'Email address',
                      labelText: 'Email',
                      helperText: 'Enter your email',
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const CustomInputField(
                      hintText: 'Password',
                      labelText: 'Password',
                      helperText: 'Enter your password',
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                    ),
                    const SizedBox(height: 30),
                    ElevatedButton(
                      child: const SizedBox(
                        width: double.infinity,
                        child: Text('Save'),
                      ),
                      onPressed: () {
                        FocusScope.of(context)
                            .requestFocus(FocusNode()); //  close the keyboard
                        if (!myFormKey.currentState!.validate()) {
                          print('Form not valid');
                          return;
                        }

                        print(formValues);
                      },
                    )
                  ]),
                ))));
  }
}
