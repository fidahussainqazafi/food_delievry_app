import 'package:flutter/material.dart';
import 'package:food_delievry_app/screens/main_screen.dart';
import 'package:food_delievry_app/screens/onBoarding/onboarding_screen.dart';
import 'package:food_delievry_app/screens/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Deleivry App',
      theme: ThemeData(

        primarySwatch: Colors.orange,

      ),
      home: const Splash_Screen(child: Onboarding_Screen()),
    );
  }
}

