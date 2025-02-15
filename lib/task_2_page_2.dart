import 'package:flutter/material.dart';

class Task2Page2 extends StatelessWidget {
  const Task2Page2({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> foods = [
      {"img": "assets/veg.png", "name": "Vegetable Pizza"},
      {"img": "assets/images.jpg", "name": "Cheese Pizza"},
      {"img": "assets/burger.jpg", "name": "Burger"},
      {"img": "assets/Noodles.jpg", "name": "Noodles"},
      {"img": "assets/f.jpg", "name": "Fries"},
    ];
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text("WOW Pizza!"),
      ),
      body: Column(
        children: foods
            .map((f) => ListTile(
                  onTap: () {
                    Navigator.of(context).pushNamed("page3", arguments: f);
                  },
                  leading: Image.asset(
                    f['img'] as String,
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                  title: Text(f['name'] as String),
                ))
            .toList(),
      ),
    );
  }
}
