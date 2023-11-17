import 'package:flutter/material.dart';

class Cart_Widget extends StatelessWidget {
  final String txt;
  final String price;
  final String image;
  const Cart_Widget({Key? key, required this.txt, required this.price, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
      width: double.infinity,
      height: MediaQuery.of(context).size.height*.2,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
                offset: Offset(0,2),
                spreadRadius: 1.5,
                blurRadius: 5.5,
                color: Colors.grey[350]!
            )
          ]
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0,vertical: 5),
        child: Row(children: [
          Image.asset(image),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(txt,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                    Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.grey,
                        ),

                        child: Icon(Icons.close,color: Colors.red,)),
                  ],
                ),
                SizedBox(height: 10,),
                Text('Times Food',style: TextStyle(fontWeight: FontWeight.w600),),
                SizedBox(height: 5,),
                Text(price,style: TextStyle(fontWeight: FontWeight.w600),),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(width: 1),

                      ),

                      child: Icon(Icons.remove_outlined),
                    ),
                    SizedBox(width: 10,),
                    Text('1'),
                    SizedBox(width: 10,),
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(width: 1),

                      ),

                      child: Icon(Icons.add),
                    ),

                  ],
                )
              ],
            ),
          )

        ],),
      ),
    );
  }
}
