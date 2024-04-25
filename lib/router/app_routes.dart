import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  // AppRoutes
  static const initialRoute = '/home';
  static Map<String, Widget Function(BuildContext)> routes = {
    // routes
    'home': (BuildContext context) => const HomeScreen(),
    'list_view1': (BuildContext context) => const ListView1Screen(),
    'list_view2': (BuildContext context) => const ListView2Screen(),
    'alert': (BuildContext context) => const AlertScreen(),
    'card': (BuildContext context) => const CardScreen(),
  }; // routes

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    // onGenerateRoute
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  } // onGenerateRoute
}// AppRoutes
