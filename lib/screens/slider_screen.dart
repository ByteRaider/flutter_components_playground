import 'dart:core';

import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Slider and checks Screen')),
      body: Column(children: [
        //_Slider(),
        Slider.adaptive(
            min: 50,
            max: 400,
            activeColor: AppTheme.primary,
            value: _sliderValue,
            onChanged: _sliderEnabled
                ? (value) {
                    _sliderValue = value;
                    setState(() {});
                  }
                : null),

        Checkbox(
            value: _sliderEnabled,
            onChanged: (value) {
              _sliderEnabled = value ?? true;
              setState(() {});
            }),

        CheckboxListTile(
            value: _sliderEnabled,
            activeColor: AppTheme.primary,
            title: const Text('Enable Slider'),
            onChanged: (value) => setState(() {
                  _sliderEnabled = value ?? true;
                })),

        Switch(
            value: _sliderEnabled,
            activeColor: AppTheme.primary,
            onChanged: (value) => setState(() {
                  _sliderEnabled = value;
                })),

        SwitchListTile.adaptive(
            value: _sliderEnabled,
            activeColor: AppTheme.primary,
            title: const Text('Enable Slider'),
            onChanged: (value) => setState(() {
                  _sliderEnabled = value;
                })),

        const AboutListTile(),

        Expanded(
          child: SingleChildScrollView(
            child: Image(
              image: const NetworkImage(
                  'https://wallpaperaccess.com/full/245680.jpg'),
              fit: BoxFit.contain,
              width: _sliderValue,
            ),
          ),
        ),
        const SizedBox(
          height: 25,
        ),
      ]),
    );
  }
}
