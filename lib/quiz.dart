import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function _answerQuestion;
  final int _questionIndex;
  Quiz(@required this.questions, @required this._answerQuestion,
      @required this._questionIndex);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: <Widget>[
        Question(questions[_questionIndex]['questiontext']),
        ...(questions[_questionIndex]['answers'] as List<Map<String, Object>>)
            .map(
          (answer) {
            return Answer(
                () => _answerQuestion(answer['score']), answer['text']);
          },
        ).toList()
      ],
    ));
  }
}
