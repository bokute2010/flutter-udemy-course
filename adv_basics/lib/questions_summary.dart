import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});
  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: data['correct_answer'] == data['user_answer']
                        ? const Color.fromARGB(255, 126, 235, 129)
                        : Colors.purple,
                    borderRadius: BorderRadius.circular(99),
                  ),
                  height: 24,
                  width: 24,
                  child: Text(
                    ((data['question_index'] as int) + 1).toString(),
                    style: const TextStyle(color: Colors.black),
                  ),
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data['question'] as String,
                        style: const TextStyle(color: Colors.white),
                      ),
                      const SizedBox(height: 10),
                      Text("Correct Answer: ${data['correct_answer']}",
                          style: const TextStyle(color: Colors.green)),
                      Text("Your Answer: ${data['user_answer']}",
                          style: TextStyle(
                              color:
                                  data['correct_answer'] == data['user_answer']
                                      ? Colors.green
                                      : Colors.red)),
                    ],
                  ),
                )
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
