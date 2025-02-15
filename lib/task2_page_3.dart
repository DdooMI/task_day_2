import 'package:flutter/material.dart';

class Task2Page3 extends StatelessWidget {
  const Task2Page3({super.key});

  @override
  Widget build(BuildContext context) {
    var food = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
        appBar: AppBar(
          title: Text(food['name'] as String),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                food['img'],
                height: 200,
                width: 200,
                fit: BoxFit.cover,
              ),
              Text("Enjoy your delicious ${food['name']}!"),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("Go Back"))
            ],
          ),
        ));
  }
}
