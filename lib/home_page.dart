
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
        title: Text("متجر الملابس النسائية"),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(10),
            child: ListTile(
              leading: Text(products[index]["image"], style: TextStyle(fontSize: 30)),
              title: Text(products[index]["name"], style: TextStyle(fontSize: 18)),
              subtitle: Text("الكمية: ${products[index]["count"]}"),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(Icons.remove, color: Colors.red),
                    onPressed: () => decreaseCount(index),
                  ),
                  IconButton(
                    icon: Icon(Icons.add, color: Colors.green),
                    onPressed: () => increaseCount(index),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
