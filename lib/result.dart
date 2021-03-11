import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function resetQuiz;

  Result(this.score, this.resetQuiz);

  String get resultPhrase {
    var resultText = 'You did it!';
    if (score <= 8) {
      resultText = "You are awesome!";
    } else if (score <= 12) {
      resultText = "WOW! Really good";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold)),
        FlatButton(
          child: Text("Restart Quiz"),
          onPressed: resetQuiz,
          textColor: Colors.blue,
        ),
      ],
    ));
  }
}
