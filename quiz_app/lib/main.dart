import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/home_screen.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
               colors: [
                 Color.fromARGB(255, 96, 12, 239),
                 Color.fromARGB(255, 175, 136, 243),
               ]
            )
          ),
          child: const HomeScreen(),
        ),
      ),
    ),
  );
}

