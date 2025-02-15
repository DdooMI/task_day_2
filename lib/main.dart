import 'package:flutter/material.dart';
import 'package:task_day_2/task2_page_3.dart';
import 'package:task_day_2/task_2.dart';
import 'package:task_day_2/task_2_page_2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {
        "page2": (context) => Task2Page2(),
        "page3": (context) => Task2Page3()
      },
      home: const Task2(),
    );
  }
}
