import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int questionIndex = 0;
  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });

    print("Answer Chosen");
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    //build is always run and updates
    var questions = [
      "what is your favorte color?",
      "what is your least favorite color?",
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('MyFirstApp'),
        ),
        body: Column(
          children: <Widget>[
            Text(questions[questionIndex]),
            RaisedButton(child: Text('Answer 1'), onPressed: answerQuestion),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => print("Answer2 chosen"),
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () {
                print('answer 3 chosen');
              },
            ),
          ],
        ),
      ),
    );
  }
}
