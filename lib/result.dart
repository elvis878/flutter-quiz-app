import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final VoidCallback resetQuizHandler;

  const Result(
      {super.key, required this.totalScore, required this.resetQuizHandler});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text('You have answered all the available questions!'),
          const SizedBox(
            height: 10,
          ),
          if (totalScore > 0)
            Text(
              'Your total score is $totalScore',
              style: const TextStyle(
                fontSize: 24,
              ),
            ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton.icon(
            onPressed: resetQuizHandler,
            icon: const Icon(Icons.refresh),
            label: const Text('Restart quiz'),
          )
        ],
      ),
    );
  }
}
