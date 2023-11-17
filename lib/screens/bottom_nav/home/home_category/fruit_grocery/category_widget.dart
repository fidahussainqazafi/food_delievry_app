import 'package:flutter/material.dart';

class SingleSelectedCategory extends StatelessWidget {
  final VoidCallback ? ontap;
  final Color color;
  final String txt;
  const SingleSelectedCategory({Key? key, this.ontap, required this.color, required this.txt}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: ontap,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 5),
          height: 40,
          width: 110,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: color
          ),
          child: Center(
            child: Text(txt,style: TextStyle(color: Colors.white),),
          ),
        ),
      ),
    );
}
}
