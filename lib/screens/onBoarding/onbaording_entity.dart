
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnboardingEntity {
 final String? image;
 final String? title;
 final String? description;

     OnboardingEntity({this.image, this.title,this.description});

     static List<OnboardingEntity> onBoardingData = [
   OnboardingEntity(

     title: 'On demand adn run time location',
     description: 'pick from your location'
   ),
       OnboardingEntity(

         title: 'Anything , anytime, anywhere',
         description: 'whether it is a parcel or cheque'
       ),
       OnboardingEntity(
         title: 'Live Track your shipment',
         description: 'see a real time view of your shipment',
       )


 ];


}