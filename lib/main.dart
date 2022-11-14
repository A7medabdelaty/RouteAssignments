import 'package:flutter/material.dart';
import 'package:flutterassignments/assignment1/home_screen.dart';
import 'package:flutterassignments/assignment2/route_app/android_screen.dart';
import 'package:flutterassignments/assignment2/route_app/fullstack_screen.dart';
import 'package:flutterassignments/assignment2/route_app/home.dart';
import 'package:flutterassignments/assignment2/route_app/ios_screen.dart';

import 'assignment1/login_screen.dart';
import 'assignment2/contacts/contact_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final Map<String, Widget Function(BuildContext)> myRoutes = {
    LoginScreen.routeName: (context) => const LoginScreen(),
    Home.routeName: (context) => const Home(),
    ContactScreen.routeName: (context) => ContactScreen(),
    RouteHomeScreen.routeName: (context) => const RouteHomeScreen(),
    AndroidScreen.routeName: (context) => const AndroidScreen(),
    IosScreen.routeName: (context) => const IosScreen(),
    FullStack.routeName: (context) => const FullStack(),
  };

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: myRoutes,
      initialRoute: ContactScreen.routeName,
      debugShowCheckedModeBanner: false,
    );
  }
}
