import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // قائمة المنتجات
  List<Map<String, dynamic>> products = [
    {"name": "جوارب", "count": 10, "image": "🧦"},
    {"name": "بدلة نسائية", "count": 5, "image": "👗"},
    {"name": "اكسسوارات", "count": 20, "image": "💍"},
    {"name": "داخلية نسائية", "count": 15, "image": "👙"},
  ];

  void increaseCount(int index) {
    setState(() {
      products[index]["count"]++;
    });
  }

  void decreaseCount(int index) {
    setState(() {
      if (products[index]["count"] > 0) {
        products[index]["count"]--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("المخزن"),
        centerTitle: true,
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(16),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // عمودين
          crossAxisSpacing: 10,
          mainAxisSpacing:
