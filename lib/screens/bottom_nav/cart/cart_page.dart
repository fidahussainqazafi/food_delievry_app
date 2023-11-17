import 'package:flutter/material.dart';
import 'package:food_delievry_app/screens/bottom_nav/cart/cart_widget.dart';
import 'package:food_delievry_app/widgets/button_container.dart';

import '../../payment/payment_screen.dart';

class Cart_Page extends StatefulWidget {
  const Cart_Page({Key? key}) : super(key: key);

  @override
  State<Cart_Page> createState() => _Cart_PageState();
}

class _Cart_PageState extends State<Cart_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Prime Food App'),
      ),
   body: Container(
     margin:const  EdgeInsets.symmetric(horizontal: 10,vertical: 20),
     child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,

       children: [
         Text('2 items in the list',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
        Expanded(
          child:ListView.builder(
              itemCount: 10,
              itemBuilder: (context,index){
         return   Cart_Widget(
                txt: 'Pizza',
                price: '\$49',
                image: 'assets/images/im_pizza.jpg');
          }),
        ),

       const  Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Text('Items',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
             Text('2',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)

           ],
          ),
       const  SizedBox(height: 10,),
       const  Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Text('Delivery Fee',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
             Text('\$0.00',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)

           ],
         ),
         SizedBox(height: 10,),
         Divider(
           thickness: 2,
         ),
         SizedBox(height: 10,),
         const  Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Text('Total Fee',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
             Text('\$55.00',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
           ],
         ),
         SizedBox(height: 30,),
         Button_ContainerWidget(title: 'Checout',

         onTap: (){
           Navigator.push(context, MaterialPageRoute(builder: (context)=> PaymentPage()));
         },
         )
       ],
     ),
   )
    );
  }
}
