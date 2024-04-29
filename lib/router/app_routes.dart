import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  // AppRoutes
  static const initialRoute = 'home';
  static final menuOptions = <MenuOption>[
    // MenuOption(
    //   route: 'home',
    //   name: 'Home Screen',
    //   screen: const HomeScreen(),
    //   icon: Icons.home,
    // ),
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

    MenuOption(
        route: 'avatar',
        name: 'Avatar',
        screen: const AvatarScreen(),
        icon: Icons.supervised_user_circle_outlined),

    MenuOption(
        route: 'animated_container',
        name: 'Animated Container',
        screen: const AnimatedScreen(),
        icon: Icons.play_circle_outline),
    MenuOption(
        route: 'inputs',
        name: 'Text Inputs',
        screen: const InputScreen(),
        icon: Icons.input_rounded),

    MenuOption(
        route: 'slider',
        name: 'Slider and Checks',
        screen: const SliderScreen(),
        icon: Icons.slideshow), // Slider and Checks

    MenuOption(
        route: 'list_view_builder',
        name: 'InfiniteScroll and Pull to refresh',
        screen: const ListViewBuilderScreen(),
        icon: Icons.build_circle_outlined),
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
