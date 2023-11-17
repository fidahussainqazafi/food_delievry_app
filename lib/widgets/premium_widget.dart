import 'package:flutter/material.dart';

class PremiumWidget extends StatelessWidget {
  final IconData icon;
  final String txt;
  const PremiumWidget({Key? key, required this.icon, required this.txt}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(

        children: [
          Icon(icon,color: Colors.orangeAccent,),
          SizedBox(width: 20,),
          Text(txt),

        ],

    );
  }
}
