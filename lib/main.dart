import 'package:fl_components/router/app_routes.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  // MyApp
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // build
    return MaterialApp(
      // MaterialApp
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.routes,
      onGenerateRoute: AppRoutes.onGenerateRoute,
    ); // MaterialApp
  } // build
} // MyApp
