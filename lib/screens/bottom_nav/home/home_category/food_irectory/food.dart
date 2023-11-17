import 'package:flutter/material.dart';

import '../../../../../data/data_record.dart';
import '../../../../search/search_screen.dart';
import '../../../../search/search_widget.dart';
import '../fruit_grocery/category_widget.dart';

class Food_Screen extends StatefulWidget {
  const Food_Screen({Key? key}) : super(key: key);

  @override
  State<Food_Screen> createState() => _Food_ScreenState();
}

class _Food_ScreenState extends State<Food_Screen> {
    int _currentSelectedCategory = 0;
  @override
  Widget build(BuildContext context) {
    final TextEditingController searchController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios_new_rounded, color: Colors.black),
        ),
      ),
      body:Container(
        margin: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Search_Widget(
                      searchController: searchController,
                      ontap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Search_Screen()));
                      },
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Icon(
                        Icons.settings_voice,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Text('Categories', style: TextStyle(fontSize: 16)),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SingleSelectedCategory(
                    txt: 'Burger',
                    color: _currentSelectedCategory == 0
                        ? Colors.orange
                        : Colors.blueGrey,
                    ontap: () {
                      setState(() {
                        _currentSelectedCategory = 0;
                      });
                    },
                  ),
                  SingleSelectedCategory(
                    txt: 'Pizza',
                    color: _currentSelectedCategory == 1
                        ? Colors.orange
                        : Colors.blueGrey,
                    ontap: () {
                      setState(() {
                        _currentSelectedCategory = 1;
                      });
                    },
                  ),
                  SingleSelectedCategory(
                    txt: 'Sandwich',
                    color: _currentSelectedCategory == 2
                        ? Colors.orange
                        : Colors.blueGrey,
                    ontap: () {
                      setState(() {
                        _currentSelectedCategory = 2;
                      });
                    },
                  ),
                ],
              ),

              SizedBox(height: 20),
              Text('Today Special Offer',style: TextStyle(fontSize: 20,),),
              _switchSpecialCategoryOnSelectedIndex(_currentSelectedCategory),
              SizedBox(height: 20),
              Text('Popular Now',style: TextStyle(fontSize: 20,),),
              _switchPopularCategoryOnSelectedIndex(_currentSelectedCategory)

            ],
          ),
        ),
      )
    );
  }

    Widget _switchSpecialCategoryOnSelectedIndex(int index) {
      switch (index) {
        case 0:
          return _buildSpecialBurgerList();
        case 1:
          return _buildSpecialPizzaList();
        case 2:
          return _buildSpecialSandwichList();
        default:
          return Container();
      }
    }
}
    _buildSpecialBurgerList(){

      return Container(
        height: 350,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: BURGER_SPECIAL_CATEGORY_LIST.map((specialburger){
              return Container(
                width: 300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Image.asset("${specialburger['image']}",fit: BoxFit.cover,),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text("${specialburger['title']}",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                            Text("\$5 Delivery Fee 20-40 min",style: TextStyle(fontSize: 10),),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 20),
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Text("${specialburger['rating']}"),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              );

            }).toList()

        ),
      );

        }


  _buildSpecialPizzaList(){

    return Container(
      height: 350,
      child: ListView(
          scrollDirection: Axis.horizontal,
          children: PIZZA_SPECIAL_CATEGORY_LIST.map((specialburger){
            return Container(
              width: 300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Image.asset("${specialburger['image']}",fit: BoxFit.cover,),

                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text("${specialburger['title']}",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                          Text("\$5 Delivery Fee 20-40 min",style: TextStyle(fontSize: 10),),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 20),
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Text("${specialburger['rating']}"),

                        ),
                      )
                    ],
                  )
                ],
              ),
            );

          }).toList()

      ),
    );

  }

_buildSpecialSandwichList(){

 return Container(
    height: 350,
    child: ListView(
        scrollDirection: Axis.horizontal,
        children: SANDWICH_SPECIAL_CATEGORY_LIST.map((specialburger){
          return Container(
            width: 300,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Image.asset("${specialburger['image']}",fit: BoxFit.cover,),
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text("${specialburger['title']}",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        Text("\$5 Delivery Fee 20-40 min",style: TextStyle(fontSize: 10),),

                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Text("${specialburger['rating']}"),
                      ),
                    )
                  ],
                )
              ],
            ),
          );

        }).toList()

    ),
  );

}



Widget _switchPopularCategoryOnSelectedIndex(int index) {
  switch (index) {
    case 0:
      return _buildPopularSpecialBurgerList();
    case 1:
      return _buildPopularSpecialPizzaList();
    case 2:
      return _buildPopularSpecialSandwichList();
    default:
      return Container();
  }
}

_buildPopularSpecialBurgerList(){
 return Container(
    height: 200,
    child: ListView(
        scrollDirection: Axis.horizontal,
        children: BURGER_POPULAR_CATEGORY_LIST.map((specialburger){
          return Container(
            width: 180,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               Stack(
                 children: [
                   Container(
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(5),
                     ),
                     child: Image.asset("${specialburger['image']}",fit: BoxFit.cover,),
                   ),
                   SizedBox(height: 10,),


                   Positioned(
                     bottom: 20,
                     right: 20,
                     child: Container(
                       width: 50,
                       height: 30,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10),
                         color: Colors.red,
                       ),
                       child: Center(
                         child: Text('\$5',
                           style: TextStyle(color: Colors.white),
                         ),
                       ),
                     ),
                   ),

                 ],
               ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text("${specialburger['title']}",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                          ),
                        ),

                      ],
                    ),

                    Row(
                      children: [
                        Icon(Icons.star,color: Colors.amber,),
                        Text("${specialburger['rating']}"),
                      ],
                    )
                  ],
                )
              ],
            ),
          );

        }).toList()

    ),
  );

}



_buildPopularSpecialPizzaList(){

  return Container(
    height: 200,
    child: ListView(
        scrollDirection: Axis.horizontal,
        children: PIZZA_POPULAR_CATEGORY_LIST.map((specialburger){
          return Container(
            width: 180,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Image.asset("${specialburger['image']}",fit: BoxFit.cover,),
                    ),
                    SizedBox(height: 10,),


                    Positioned(
                      bottom: 20,
                      right: 20,
                      child: Container(
                        width: 50,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.red,
                        ),
                        child: Center(
                          child: Text('\$5',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),

                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text("${specialburger['title']}",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                          ),
                        ),

                      ],
                    ),

                    Row(
                      children: [
                        Icon(Icons.star,color: Colors.amber,),
                        Text("${specialburger['rating']}"),
                      ],
                    )
                  ],
                )
              ],
            ),
          );

        }).toList()

    ),
  );
}

_buildPopularSpecialSandwichList(){

  return Container(
    height: 200,
    child: ListView(
        scrollDirection: Axis.horizontal,
        children: SANDWICH_POPULAR_CATEGORY_LIST.map((specialburger){
          return Container(
            width: 180,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Image.asset("${specialburger['image']}",fit: BoxFit.cover,),
                    ),
                    SizedBox(height: 10,),


                    Positioned(
                      bottom: 20,
                      right: 20,
                      child: Container(
                        width: 50,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.red,
                        ),
                        child: Center(
                          child: Text('\$5', style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),

                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text("${specialburger['title']}",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                          ),
                        ),

                      ],
                    ),

                    Row(
                      children: [
                        Icon(Icons.star,color: Colors.amber,),
                        Text("${specialburger['rating']}"),
                      ],
                    )
                  ],
                )
              ],
            ),
          );

        }).toList()

    ),
  );

}