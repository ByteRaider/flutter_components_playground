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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Slider and checks Screen')),
        body: SingleChildScrollView(
          child: Column(children: [
            //_Slider(),
            Slider.adaptive(
                min: 10,
                max: 1000,
                activeColor: AppTheme.primary,
                value: _sliderValue,
                onChanged: (value) {
                  _sliderValue = value;
                  setState(() {});
                }),
            Image(
              image: const NetworkImage(
                  'https://wallpaperaccess.com/full/245680.jpg'),
              fit: BoxFit.contain,
              width: _sliderValue,
            ),
            const SizedBox(
              height: 25,
            ),
          ]),
        ));
  }
}
