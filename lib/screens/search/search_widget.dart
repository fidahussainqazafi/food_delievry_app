import 'package:flutter/material.dart';

class Search_Widget extends StatelessWidget {
  final VoidCallback? ontap;
  final TextEditingController ? searchController;
  const Search_Widget({Key? key, this.ontap, this.searchController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      width: double.infinity,
      height:45,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                offset: Offset(0,1),
                spreadRadius: 1.5,
                blurRadius: 5.5,
                color: Colors.grey[400]!
            )
          ]
      ),
      child: TextFormField(
    onTap: ontap,
    controller: searchController,
    decoration: InputDecoration(
    prefixIcon: Icon(Icons.search),
    border: InputBorder.none,
    hintText: 'sear yout favourite here'
    ),
    )
    );
  }
}
