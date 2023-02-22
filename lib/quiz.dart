import 'package:flutter/material.dart';
import 'package:quiz_app/answer.dart';
import 'package:quiz_app/question.dart';

class Quiz extends StatelessWidget {
  final List questions;
  final int questionIndex;
  final Function answerQuestion;

  const Quiz(
      {super.key,
      required this.questions,
      required this.questionIndex,
      required this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(
          questionText: questions[questionIndex]['question'],
        ),
        ...questions[questionIndex]['answers'].map<Widget>((answer) {
          return Answer(
            answerQuestion: () => answerQuestion(answer['score']),
            answerText: answer['text'],
          );
        }),
      ],
    );
  }
}
