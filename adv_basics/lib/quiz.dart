import 'package:adv_basics/question_screen.dart';
import 'package:adv_basics/start_screen.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget? activeSreen;
  
  @override
  void initState() {
    super.initState();
    activeSreen = StartScreen(switchScreen);
  }

  void switchScreen() {
    setState(() {
      activeSreen = const QuestionScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.green, Color.fromARGB(255, 74, 3, 86)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: activeSreen,
        ),
      ),
    );
  }
}
