import 'package:flutter/material.dart';

class Task2 extends StatelessWidget {
  const Task2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lime,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 200),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("assets/worldfood.png"),
            Text("Welcome to WOW Pizza!"),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("page2");
                },
                child: Text("Start Ordering"))
          ],
        ),
      ),
    );
  }
}
