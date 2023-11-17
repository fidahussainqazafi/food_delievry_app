import 'package:flutter/material.dart';
import 'package:food_delievry_app/screens/main_screen.dart';
import 'package:food_delievry_app/widgets/button_container.dart';
import 'package:food_delievry_app/widgets/premium_widget.dart';

class Premium_Screen extends StatefulWidget {
  const Premium_Screen({Key? key}) : super(key: key);

  @override
  State<Premium_Screen> createState() => _Premium_ScreenState();
}

class _Premium_ScreenState extends State<Premium_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        margin: EdgeInsets.symmetric(horizontal: 30,vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 100,),
            Center(child: Icon(Icons.no_food,color: Colors.orangeAccent,)),
            SizedBox(height: 40,),
            Text('The best for your,\nneighbourhood,\ndelivered for less,',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),
            PremiumWidget(icon: Icons.home, txt: 'Save an average of \$4 to 5 per order'),
            SizedBox(height: 20,),
           PremiumWidget(icon: Icons.home, txt: 'Look for food prime logo fo find 1k\neligible restaurents'),

            SizedBox(height: 20,),
           PremiumWidget(icon: Icons.shopping_cart, txt: 'Enjoy zero delievry fee and reduced\nservice fees on ordere \$12'),
            SizedBox(height: 20,),
            PremiumWidget(icon: Icons.calendar_today, txt: 'Free 1 month trails,\$ 9.99 monthly,\nafter easily cancel anything'),
            SizedBox(height: 20,),
            Divider(

            ),
            SizedBox(height: 40,),
            Button_ContainerWidget(title: 'Try Food Prime free foe 1 month'),
            SizedBox(height: 40,),
             GestureDetector(
                 onTap: (){
                   Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                       builder: (context)=> const Main_Screen()), (route) => false);

                 },
                 child: Center(child: Text('Skip',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),))),

            SizedBox(height: 30,),

            RichText(
             textAlign: TextAlign.center,
              text: TextSpan(
                  text: 'By TApping the button I agree to the ',
                  style: TextStyle(color:Colors.black ),
                  children: [
                    TextSpan(
                      text: '  Terms',style: TextStyle(
                        color: Colors.orangeAccent
                    ),

                    ),
                    TextSpan(
                      text: '  and an subscription of monthly charges \$9.99 monthly until ',style: TextStyle(color: Colors.black),
                    ),
                    TextSpan(text: '  cancel',style: TextStyle(color: Colors.orangeAccent)),
                    TextSpan(
                      text: ' cancel an account prior to any renewal to avoid charges ',style: TextStyle(color: Colors.black),
                    ),
                  ]
              ),
            ),
          ],
        ),
      ),
    );
  }
}
