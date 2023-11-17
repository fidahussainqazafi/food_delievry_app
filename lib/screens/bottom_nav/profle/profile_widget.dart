import 'package:flutter/material.dart';

class Profile_Widget extends StatelessWidget {

  final String title;
  final IconData icon;
  const Profile_Widget({Key? key, required this.title, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      height: 50,
      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(10),

      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(icon,size: 30,),
              SizedBox(width: 20,),
              Text(title,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),

            ],
          ),
          Icon(Icons.arrow_forward_ios_outlined),
        ],
      ),
    );
  }
}
