import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  int _totalScore = 0;
  final List _questions = const [
    {
      'question': 'What is your favorite movie?',
      'answers': [
        {'text': 'Avengers: Endgame', 'score': 3},
        {'text': 'Wolf of Wall Street', 'score': 4},
        {'text': 'Interstellar', 'score': 2},
        {'text': 'Deep Impact', 'score': 1}
      ]
    },
    {
      'question': 'What is your favorite color?',
      'answers': [
        {'text': 'Blue', 'score': 3},
        {'text': 'Green', 'score': 2},
        {'text': 'Red', 'score': 4},
        {'text': 'Orange', 'score': 1}
      ]
    },
    {
      'question': 'What is your favorite animal?',
      'answers': [
        {'text': 'Dog', 'score': 3},
        {'text': 'Cat', 'score': 4},
        {'text': 'Bird', 'score': 2},
        {'text': 'Chicken', 'score': 1}
      ]
    },
  ];

  void _answerQuestion(int score) {
    setState(() {
      _totalScore += score;
      _questionIndex++;
    });
  }

  void _resetQuiz() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quiz Time'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion,
              )
            : Result(
                totalScore: _totalScore,
                resetQuizHandler: _resetQuiz,
              ),
      ),
    );
  }
}
