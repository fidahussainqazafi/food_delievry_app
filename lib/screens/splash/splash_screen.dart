import 'package:flutter/material.dart';
import 'package:food_delievry_app/screens/main_screen.dart';
import 'package:food_delievry_app/screens/onBoarding/onboarding_screen.dart';

class Splash_Screen extends StatefulWidget {
  final Widget child;
  const Splash_Screen({Key? key, required this.child}) : super(key: key);

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  void initState() {
  Future.delayed(const Duration(milliseconds: 3000)).then((value) {

    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
        builder: (context)=> const Onboarding_Screen()), (route) => false);
  });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.orange,
      body: Center(
        child: Text('Welcome To The Food Delievry App'),
      ),
    );
  }
}
