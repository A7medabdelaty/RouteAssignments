import 'package:flutter/material.dart';
import 'package:flutterassignments/home_screen.dart';
import 'package:flutterassignments/login_screen.dart';
import 'package:flutterassignments/whatsapp_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final Map<String, Widget Function(BuildContext)> myRoutes = {
    LoginScreen.routeName: (context) => const LoginScreen(),
    Home.routeName: (context) => const Home(),
  };

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: myRoutes,
      initialRoute: LoginScreen.routeName,
      debugShowCheckedModeBanner: false,
      home: const LoginScreen(),
    );
  }
}
