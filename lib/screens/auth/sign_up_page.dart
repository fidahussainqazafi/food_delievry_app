import 'package:flutter/material.dart';
import 'package:food_delievry_app/screens/auth/login_page.dart';
import 'package:food_delievry_app/widgets/button_container.dart';
import 'package:food_delievry_app/widgets/checkbox_widget.dart';
import 'package:food_delievry_app/widgets/form_container_widget.dart';

class SignUp_Screen extends StatelessWidget {
  const SignUp_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20,vertical: 40),
        child: Column(
          children: [
            Expanded(
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 100,),
                  Text('SignUp',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  SizedBox(height: 20,),
                  FormContainerWidget(hintText: 'Username'),
                  SizedBox(height: 20,),
                  FormContainerWidget(hintText: 'email'),
                  SizedBox(height: 20,),
                  FormContainerWidget(hintText: 'password'),
                  SizedBox(height: 20,),
                  FormContainerWidget(hintText: 'phone Number'),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      CheckBoxWidget(),
                      Expanded(
                        child: RichText(
                          maxLines: 2,
                          text: TextSpan(
                              text: 'By sign in you accept',
                              style: TextStyle(color:Colors.black ),
                              children: [
                                TextSpan(
                                  text: '  Term of the services',style: TextStyle(
                                    color: Colors.orangeAccent
                                ),

                                ),
                                TextSpan(
                                  text: '  and',style: TextStyle(color: Colors.black),
                                ),
                                TextSpan(text: '  Privacy policy',style: TextStyle(color: Colors.orangeAccent)),
                              ]
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 40,),
                  Button_ContainerWidget(title: 'Sign Up',
                    onTap:(){
                      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                          builder: (context)=> const Login()), (route) => false);
                    } ,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Already have an account?'),
                SizedBox(width: 5,),
                GestureDetector(
                  onTap: (){

                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                        builder: (context)=> const Login()), (route) => false);
                  },
                  child: Text('Login',style: TextStyle(color: Colors.orangeAccent),),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
