import 'package:flutter/material.dart';
import 'package:food_delievry_app/screens/bottom_nav/profle/profile_widget.dart';

class Profile_Page extends StatefulWidget {
  const Profile_Page({Key? key}) : super(key: key);

  @override
  State<Profile_Page> createState() => _Profile_PageState();
}

class _Profile_PageState extends State<Profile_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('Food Delivery App'),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.settings,color: Colors.black,)),
          SizedBox(width: 10,),
        ],
      ),
      body:Container(
        margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(''),
                Text('',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
              ],
            ),
            SizedBox(height: 10,),
            Divider(
              thickness: 2,
              color: Colors.grey,
            ),
            SizedBox(height: 20,),
           Profile_Widget(
               title: 'Language', icon: Icons.language),
            SizedBox(height: 15,),
            Profile_Widget(
                title: 'help', icon: Icons.live_help_outlined),
            SizedBox(height: 15,),
            Profile_Widget(
                title: 'Theme', icon: Icons.light_mode_outlined),
          ],
        ),
      )

    );
  }
}
