import 'package:flutter/material.dart';
import 'package:food_delievry_app/data/data_record.dart';
import 'package:food_delievry_app/screens/bottom_nav/home/home_category/fruit_grocery/category_widget.dart';
import 'package:food_delievry_app/screens/search/search_widget.dart';
import '../../../../search/search_screen.dart';
class Grocery_Fruit extends StatefulWidget {
  const Grocery_Fruit({Key? key}) : super(key: key);

  @override
  State<Grocery_Fruit> createState() => _Grocery_FruitState();
}

class _Grocery_FruitState extends State<Grocery_Fruit> {
  int _currentSelectedCategory = 0;

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
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
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
                  txt: 'Fruits',
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
                  txt: 'Vegetables',
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
                  txt: 'Kitchen',
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
            SizedBox(height: 15),
            _switchCategoryOnSelectedIndex(_currentSelectedCategory),
          ],
        ),
      ),
    );
  }

  Widget _switchCategoryOnSelectedIndex(int index) {
    switch (index) {
      case 0:
        return _buildFruitsGridView();
      case 1:
        return _buildVegetableGridView();
      case 2:
        return _buildKitchenGridView();
      default:
        return Container();
    }
  }

  Widget _buildFruitsGridView() {
    return Expanded(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 0.8,
        ),
        itemCount: FRUIT_CATEGORY_LIST.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Stack(
                  children: [
                    Image.asset(
                      "${FRUIT_CATEGORY_LIST[index]['image']}",
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      bottom: 20,
                      right: 20,
                      child: Container(
                        width: 40,
                        height: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.red,
                        ),
                        child: Center(
                          child: Text(
                            '${FRUIT_CATEGORY_LIST[index]['price']}',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Text("${FRUIT_CATEGORY_LIST[index]['title']}"),
            ],
          );
        },
      ),
    );
  }

  Widget _buildVegetableGridView() {
    return Expanded(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 0.8,
        ),
        itemCount: VEGETABLE_CATEGORY_LIST.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Stack(
                  children: [
                    Image.asset(
                      "${VEGETABLE_CATEGORY_LIST[index]['image']}",
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      bottom: 20,
                      right: 20,
                      child: Container(
                        width: 40,
                        height: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.red,
                        ),
                        child: Center(
                          child: Text(
                            '${VEGETABLE_CATEGORY_LIST[index]['price']}',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Text("${VEGETABLE_CATEGORY_LIST[index]['title']}"),
            ],
          );
        },
      ),
    );
  }

  Widget _buildKitchenGridView() {
    return Expanded(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 0.8,
        ),
        itemCount: KITCHEN_CATEGORY_LIST.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Stack(
                  children: [
                    Image.asset(
                      "${KITCHEN_CATEGORY_LIST[index]['image']}",
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      bottom: 20,
                      right: 20,
                      child: Container(
                        width: 40,
                        height: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.red,
                        ),
                        child: Center(
                          child: Text(
                            '${KITCHEN_CATEGORY_LIST[index]['price']}',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Text("${KITCHEN_CATEGORY_LIST[index]['title']}"),
            ],
          );
        },
      ),
    );
  }
}