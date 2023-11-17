import 'package:flutter/material.dart';
import 'package:food_delievry_app/screens/bottom_nav/profle/profile_Page.dart';

import 'bottom_nav/cart/cart_page.dart';
import 'bottom_nav/home/home_page.dart';

class Main_Screen extends StatefulWidget {
  const Main_Screen({Key? key}) : super(key: key);

  @override
  State<Main_Screen> createState() => _Main_ScreenState();
}

class _Main_ScreenState extends State<Main_Screen> {
  int _currentPageindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _currentPageindex = index;
          });
        },
        currentIndex: _currentPageindex,
        selectedItemColor: Colors.amber,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: 'Add to Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle),label: 'Profile'),
        ],
      ),
      body: _switchPagesOnIndex(_currentPageindex),
    );
  }

  Widget _switchPagesOnIndex(int index) {
    switch (index) {
      case 0:
        return HomePage();
      case 1:
        return Cart_Page();
      case 2:
        return Profile_Page();
      default:
        return Container(); // You can return some default widget or handle the default case according to your needs.
    }
  }
}
