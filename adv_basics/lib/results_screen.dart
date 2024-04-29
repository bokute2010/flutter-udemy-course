import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.chosonAnswers});
  final List<String> chosonAnswers;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Your answered X out of Y questions correctly!"),
          const SizedBox(height: 20),
          const Text("List of answers and questions ..."),
          const SizedBox(height: 20),
          TextButton(onPressed: () {}, child: const Text("Restart Quiz!")),
        ],
      ),
    );
  }
}
