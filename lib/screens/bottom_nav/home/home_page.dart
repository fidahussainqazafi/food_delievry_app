import 'package:flutter/material.dart';
import 'package:food_delievry_app/screens/bottom_nav/home/home_category/food_irectory/food.dart';
import 'package:food_delievry_app/screens/bottom_nav/home/home_category/fruit_grocery/grocery_fruit_page.dart';
import 'package:food_delievry_app/screens/bottom_nav/home/home_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 40,horizontal: 20),
        child: Column(
          children: [
           Home_Widget(
               txt: 'Grocery and Fruit',
               description: 'Order fresh vegetable & friuts anytime,anywhere',
               image: 'assets/images/im_logoo.jpg',
               ontap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>Grocery_Fruit()));

               }),

            Home_Widget(
                txt: 'Food',
                description: 'Order from your favourite restaurant & home chefs',
                image: 'assets/images/im_logoo.jpg',
                ontap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Food_Screen()));

                }),
          ],
        ),
      )
    );
  }
}
