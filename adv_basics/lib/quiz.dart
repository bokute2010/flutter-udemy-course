import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/question_screen.dart';
import 'package:adv_basics/results_screen.dart';
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
  var activeSreen = 'start-screen';
  List<String> selectedAnswers = [];
  @override
  void initState() {
    super.initState();
  }

  void chooseAnswers(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeSreen = 'results-screen';
        selectedAnswers = [];
      });
    }
  }

  void switchScreen() {
    setState(() {
      activeSreen = 'question-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeSreen == 'question-screen') {
      screenWidget = QuestionScreen(onSelectAnswer: chooseAnswers);
    } else if (activeSreen == 'results-screen') {
      screenWidget = const ResultsScreen();
    }

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
          child: screenWidget,
        ),
      ),
    );
  }
}
