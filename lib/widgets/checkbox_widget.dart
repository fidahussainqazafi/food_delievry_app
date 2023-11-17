import 'package:flutter/material.dart';

class CheckBoxWidget extends StatefulWidget {
   CheckBoxWidget({Key? key}) : super(key: key);

  @override
  State<CheckBoxWidget> createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  bool _rememberMeCheckValue = false;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
        value: _rememberMeCheckValue,
        onChanged: (value){
         setState(() {
           _rememberMeCheckValue = value!;
         });
        });
  }
}
