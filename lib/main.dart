import 'package:e_learning/authentication/screens/password_screen.dart';
import 'package:e_learning/authentication/screens/profile_screen.dart';
import 'package:e_learning/home/widgets/bottombar.dart';
import 'package:e_learning/welcome_screens/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E Learning Mobile App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home:  const SplashScreen(),
    );
  }
}

