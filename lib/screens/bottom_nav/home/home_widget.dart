import 'package:flutter/material.dart';

class Home_Widget extends StatelessWidget {
  final String txt;
  final String description;
  final VoidCallback? ontap;
  final String image;
  const Home_Widget({Key? key, required this.txt, this.ontap, required this.description, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
        width: double.infinity,
        height: MediaQuery.of(context).size.height*.2,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  offset: Offset(0,1),
                  spreadRadius: 1.5,
                  blurRadius: 5.5,
                  color: Colors.grey[350]!
              )
            ]
        ),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: Row(
            children: [
              Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(txt,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                      SizedBox(height: 20,),
                      Text(description,style: TextStyle(fontSize: 15,color: Colors.grey),),
                    ],

                  )
              ),

              Image.asset(image,width: 100,),
            ],
          ),
        ),
      ),
    );
  }
}
