import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/questions_summary.dart';
import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(
      {super.key, required this.chosenAnswers, required this.onSwitchScreen});
  final List<String> chosenAnswers;
  final void Function(String screen) onSwitchScreen;
  List<Map<String, Object>> get summaryData {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        "question_index": i,
        "question": questions[i].text,
        "correct_answer": questions[i].answers[0],
        "user_answer": chosenAnswers[i]
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final numTotalQuestions = questions.length;
    final numCorrectAnswers = summaryData
        .where((data) => data['correct_answer'] == data['user_answer'])
        .length;

    return Container(
      margin: const EdgeInsets.all(40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Your answered $numCorrectAnswers out of $numTotalQuestions questions correctly!',
            style: const TextStyle(
                fontSize: 18,
                color: Color.fromARGB(255, 223, 109, 244),
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          QuestionsSummary(summaryData),
          const SizedBox(height: 20),
          TextButton(
              onPressed: () {
                onSwitchScreen('start-screen');
              },
              style: TextButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 234, 178, 244),
              ),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.rotate_right),
                  SizedBox(width: 10),
                  Text("Back to Start"),
                ],
              ))
        ],
      ),
    );
  }
}
