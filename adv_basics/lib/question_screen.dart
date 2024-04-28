import 'package:flutter/material.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});
  @override
  State<QuestionScreen> createState() {
    return _QuestionScreen();
  }
}

class _QuestionScreen extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("The question..."),
          ElevatedButton(onPressed: () {}, child: const Text("Question 1")),
          ElevatedButton(onPressed: () {}, child: const Text("Question 2")),
          ElevatedButton(onPressed: () {}, child: const Text("Question 3")),
        ],
      ),
    );
  }
}
