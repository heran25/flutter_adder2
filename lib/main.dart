import 'package:flutter/material.dart';
import 'package:flutter_adder2/home.dart';
void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   List<int> numbers = [0, 1, 2, 3, 4];
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Adder',
      home: Home(numbers:numbers),
    );
  }
}


