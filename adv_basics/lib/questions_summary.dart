import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});
  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: summaryData.map((data) {
        return Row(
          children: [
            Text(((data['question_index'] as int) + 1).toString()),
            Column(
              children: [
                Text(data['question'] as String),
                const SizedBox(height: 10),
                Text("Correct Answer: ${data['correct_answer']}"),
                Text("Your Answer: ${data['user_answer']}"),
              ],
            )
          ],
        );
      }).toList(),
    );
  }
}
