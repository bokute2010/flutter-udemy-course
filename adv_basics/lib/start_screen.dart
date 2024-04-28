import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.switchScreen, {super.key});

  final Function() switchScreen;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Opacity(
            opacity: 0.5,
            child: Image.asset(
              'assets/images/quiz-logo.png',
              width: 300,
            ),
          ),
          // Image.asset(
          //   'assets/images/quiz-logo.png',
          //   width: 300,
          //   color: const Color.fromARGB(109, 245, 6, 6),
          // ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Let learn Flutter by funny way",
            style: TextStyle(
                color: Color.fromARGB(255, 254, 254, 254), fontSize: 24),
          ),
          const SizedBox(
            height: 20,
          ),
          OutlinedButton.icon(
            onPressed: switchScreen,
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            label: const Text('Start Quiz'),
            icon: const Icon(Icons.arrow_right_alt),
          )
        ],
      ),
    );
  }
}
