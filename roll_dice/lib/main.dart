import 'package:flutter/material.dart';
import 'gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(colors: const [
          Color.fromARGB(226, 82, 4, 217),
          Color.fromARGB(255, 159, 111, 240),
        ],),
      ),
    ),
  );
}
