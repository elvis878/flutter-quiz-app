import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback answerQuestion;
  final String answerText;

  const Answer(
      {super.key, required this.answerQuestion, required this.answerText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(
        left: 16,
        right: 16,
      ),
      child: ElevatedButton(
        onPressed: answerQuestion,
        child: Text(answerText),
      ),
    );
  }
}
