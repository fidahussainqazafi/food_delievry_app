import 'package:flutter/material.dart';
import 'package:food_delievry_app/screens/auth/sign_up_page.dart';
import 'package:food_delievry_app/screens/premium/premium_screen.dart';
import 'package:food_delievry_app/widgets/button_container.dart';

import '../../widgets/checkbox_widget.dart';
import '../../widgets/form_container_widget.dart';
import '../../widgets/icons_widget.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

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
                  SizedBox(height: 140,),
                  Text('Log in',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

                  SizedBox(height: 20,),
                  FormContainerWidget(
                    hintText: "Email or username",
                  ),
                  SizedBox(height: 20,),
                  FormContainerWidget(hintText: 'Password'),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                     children: [
                       CheckBoxWidget(),
                       Text('Remember Me'),
                       SizedBox(width: 60,),
                       Text('Forget Password',style: TextStyle(color: Colors.red),),
                     ],
                  ),
                  SizedBox(height: 20,),
                  Button_ContainerWidget(title: 'Login',
                  onTap: (){
                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                        builder: (context)=> const Premium_Screen()), (route) => false);
                  },
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Expanded(child: Container(
                        width: double.infinity,
                        height: 1,
                        color: Colors.black,
                      ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text("Or"),
                      ),
                      Expanded(child: Container(
                        width: double.infinity,
                        height: 1,
                        color: Colors.black,
                      )
                      ),
                    ],
                  ),
                  SizedBox(height: 50,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       IconsWidget(
                         iconData: Icons.g_mobiledata,
                         color: Colors.white,
                       ),
                       SizedBox(width: 20,),
                       IconsWidget(
                         iconData: Icons.facebook,
                         color: Colors.white,
                       ),

                     ],

                  ),
                  SizedBox(height: 40,),

                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Dont have an account?'),
                SizedBox(width: 5,),
                GestureDetector(
                  onTap: (){

                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                        builder: (context)=> const SignUp_Screen()), (route) => false);
                  },
                  child: Text('create account',style: TextStyle(color: Colors.orangeAccent),),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
