
import 'package:flutter/material.dart';
import 'package:food_delievry_app/screens/auth/login_page.dart';
import 'package:food_delievry_app/screens/onBoarding/onbaording_entity.dart';
import 'package:food_delievry_app/widgets/button_container.dart';

class Onboarding_Screen extends StatefulWidget {
  const Onboarding_Screen({Key? key}) : super(key: key);

  @override
  State<Onboarding_Screen> createState() => _Onboarding_ScreenState();
}

class _Onboarding_ScreenState extends State<Onboarding_Screen> {
  List<OnboardingEntity>  onBoardingData = OnboardingEntity.onBoardingData;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: onBoardingData.length,
          itemBuilder: (context,index){
            return Container(
              margin: EdgeInsets.symmetric(vertical: 80),
              child: Column(
                children: [
                  Icon(Icons.flutter_dash),
                  SizedBox(height: 150,),
                  Text("${onBoardingData[index].title}",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.grey),

                  ),
                  SizedBox(height: 20,),
                  Text("${onBoardingData[index].description}",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.grey),

                  ),
                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        color: index == 0 ?Colors.orange : Colors.grey,
                        shape: BoxShape.circle,
                      ),

                    ),
                      SizedBox(width: 10,),

                      Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          color: index == 1 ?Colors.orange :  Colors.grey,
                          shape: BoxShape.circle,
                        ),

                      ),
                      SizedBox(width: 10,),

                      Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          color: index == 2 ?Colors.orange : Colors.grey,
                          shape: BoxShape.circle,
                        ),

                      ),
                  ],
                  ),
                  SizedBox(height: 20,),
                  index == 2 ?
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),

                      child: Button_ContainerWidget(title: "Get Started",
                      hasIcon: true,
                        icon: Icons.arrow_forward_ios,
                        onTap: (){
                          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                              builder: (context)=> const Login()), (route) => false);
                        },

                      ),

                  )

                      : Container(),
            ]
              ),
            );
          }),
    );
  }
}
