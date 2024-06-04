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
  List<String> _selectedAnswers = [];
  @override
  void initState() {
    super.initState();
  }

  void chooseAnswers(String answer) {
    _selectedAnswers.add(answer);
    if (_selectedAnswers.length == questions.length) {
      setState(() {
        activeSreen = 'results-screen';
      });
    }
  }

  void switchScreen(String screenName) {
    setState(() {
      if (screenName == 'start-screen') {
        _selectedAnswers = [];
      }
      activeSreen = screenName;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeSreen == 'question-screen') {
      screenWidget = QuestionScreen(onSelectAnswer: chooseAnswers);
    } else if (activeSreen == 'results-screen') {
      screenWidget = ResultsScreen(
          chosenAnswers: _selectedAnswers, onSwitchScreen: switchScreen);
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
