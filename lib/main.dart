import 'package:flutter/material.dart';
import 'package:quizapp/answer.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  int _totalScore = 0;
  final _questions = [
    {
      'questiontext': 'What is your favorite color?',
      'answers': ['red', 'green', 'red', 'yellow'],
    },
    {
      'questiontext': 'What is your favorite animal?',
      'answers': ['dog', 'rat', 'bat', 'cat'],
    },
    {
      'questiontext': 'What is your favorite brand?',
      'answers': ['haribo', 'walmart', 'google', 'apple'],
    },
  ];
  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print("Answer Chosen");
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print("we have more questions!");
    }
  }

  @override
  Widget build(BuildContext context) {
    //build is always run and updates
    final _questions = [
      {
        'questiontext': 'What is your favorite color?',
        'answers': [
          {'text': 'red', 'score': 5},
          {'text': 'green', 'score': 0},
          {'text': 'yellow', 'score': 10},
          {'text': 'pink', 'score': 7},
        ],
      },
      {
        'questiontext': 'What is your favorite animal?',
        'answers': [
          {'text': 'dog', 'score': 5},
          {'text': 'cat', 'score': 0},
          {'text': 'rat', 'score': 10},
          {'text': 'bat', 'score': 7},
        ],
      },
      {
        'questiontext': 'What is your favorite brand?',
        'answers': [
          {'text': 'haribo', 'score': 5},
          {'text': 'apple', 'score': 0},
          {'text': 'samsung', 'score': 10},
          {'text': 'huawei', 'score': 7},
        ],
      },
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Quiz App'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(_questions, _answerQuestion, _questionIndex)
              : Result(_totalScore, _resetQuiz)),
    );
  }
}
