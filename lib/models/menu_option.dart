import 'package:flutter/material.dart' show IconData, Widget;

class MenuOption {
  final String name;
  final String route;
  final IconData icon;
  final Widget screen;

  MenuOption(
      {required this.name,
      required this.route,
      required this.icon,
      required this.screen});
}
