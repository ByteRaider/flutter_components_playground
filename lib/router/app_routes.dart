import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  // AppRoutes
  static const initialRoute = '/home';
  static final menuOptions = <MenuOption>[
    // menuOptions
    MenuOption(
      // Home MenuOption
      route: 'home',
      name: 'Home Screen',
      screen: const HomeScreen(),
      icon: Icons.home,
    ),
    MenuOption(
      // List View 1 MenuOption
      route: 'list_view1',
      name: 'List View 1',
      screen: const ListView1Screen(),
      icon: Icons.list_alt,
    ),
    MenuOption(
        // List View 2 MenuOption
        route: 'list_view2',
        name: 'List View 2',
        screen: const ListView2Screen(),
        icon: Icons.list_alt),
    MenuOption(
        // Alert MenuOption
        route: 'alert',
        name: 'Alert',
        screen: const AlertScreen(),
        icon: Icons.alarm),
    MenuOption(
        // Card MenuOption
        route: 'card',
        name: 'Card',
        screen: const CardScreen(),
        icon: Icons.credit_card),
  ];

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   // routes
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'list_view1': (BuildContext context) => const ListView1Screen(),
  //   'list_view2': (BuildContext context) => const ListView2Screen(),
  //   'alert': (BuildContext context) => const AlertScreen(),
  //   'card': (BuildContext context) => const CardScreen(),
  // }; // routes

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    // getAppRoutes
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll(
        {AppRoutes.initialRoute: (BuildContext context) => const HomeScreen()});
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    // onGenerateRoute
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  } // onGenerateRoute
} // AppRoutes
