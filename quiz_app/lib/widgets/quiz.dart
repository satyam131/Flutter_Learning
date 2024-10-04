import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/home_screen.dart';
import 'package:quiz_app/widgets/questions_screen.dart';

class Quiz extends StatefulWidget{
  const Quiz({super.key});

  @override
  State<Quiz> createState(){
    return _QuizState();
  }
}

class _QuizState extends State<Quiz>{
  Widget? activeScreen;

  @override
  void initState() {
    activeScreen = HomeScreen(switchScreen);
    super.initState();
  }

  void switchScreen(){
    setState(() {
      activeScreen = const QuestionsScreen();
    });
  }

  @override
  Widget build(context){
    return MaterialApp(
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
          child: activeScreen,
        ),
      ),
    );
  }
}