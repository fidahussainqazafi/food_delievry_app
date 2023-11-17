import 'package:flutter/material.dart';

class IconsWidget extends StatelessWidget {

  final IconData iconData;
  final Color color;
  const IconsWidget({Key? key, required this.iconData, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.red


      ),
      child: Center(
        child: Icon(iconData,size: 25, color: color,)
      ),
    );
  }
}
