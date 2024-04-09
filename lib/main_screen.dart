
import 'dart:math';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0; // for bonus points
  Color _backgroundColor = Colors.white; //for changing background color

  //random changing of color
  double startNumber = 0xFFFFFF;
  void _changeColor() {
    setState(() {
      _backgroundColor =
          Color((Random().nextDouble() * startNumber).toInt()).withOpacity(1.0);
    });
  }
  //+1 bonus point
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    //Gesture for tapping anywhere
    return GestureDetector(
      onTap: (){ //actions
        _incrementCounter();
        _changeColor();
      },
      //our scaffold
      child: Scaffold(
        backgroundColor: _backgroundColor,
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("Bonus points: + $_counter"),
        ),
        //text in center
        body: const Center(
          child: Text("Hello there"),
        ),
      ),
    );
  }
}