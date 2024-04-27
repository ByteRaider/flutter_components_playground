import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? labelText;
  final String? hintText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
  final bool obscureText;

  final String formProperty;
  final Map<String, String> formValues;

  const CustomInputField({
    super.key,
    this.labelText,
    this.hintText,
    this.helperText,
    this.icon,
    this.suffixIcon,
    this.keyboardType,
    this.obscureText = false,
    required this.formProperty,
    required this.formValues,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        autofocus: true,
        initialValue: '',
        obscureText: obscureText,
        textCapitalization: TextCapitalization.words,
        keyboardType: keyboardType,
        onChanged: (value) {
          formValues[formProperty] = value;
        },
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'This is a required field';
          }
          return value.length < 3 ? 'Too short' : null;
        },
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          helperText: helperText,
          suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
          icon: icon == null ? null : Icon(icon),
        ));
  }
}
