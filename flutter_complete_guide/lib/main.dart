import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

// Arrow functions with one expression are possible in flutter
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  // State
  var _questionIndex = 0;
  var _totalScrore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScrore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScrore = _totalScrore + score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    // Const means this is compile time constant.
    // Value will never change after compile.
    const _questions = const [
      {
        'questionText': 'Whats his favorite color?',
        'answers': [
          {'text': 'Black', 'score': 10},
          {'text': 'Green', 'score': 3},
          {'text': 'Red', 'score': 6},
          {'text': 'yellow', 'score': 2},
          {'text': 'blue', 'score': 1},
        ]
      },
      {
        'questionText': 'Whats is his favorite animal?',
        'answers': [
          {'text': 'Dog', 'score': 1},
          {'text': 'Cat', 'score': 2},
          {'text': 'Horse', 'score': 5},
          {'text': 'Snake', 'score': 7},
        ]
      },
      {
        'questionText': 'Whats is his favorite number?',
        'answers': [
          {'text': '52', 'score': 10},
          {'text': '36', 'score': 7},
          {'text': '24', 'score': 1},
          {'text': '12', 'score': 4},
        ]
      },
      {
        'questionText': 'Who is your favourite manden?',
        'answers': [
          {'text': 'Martin', 'score': 2},
          {'text': 'Mads E', 'score': 5},
          {'text': 'Daniel', 'score': 5},
          {'text': 'Kristofer', 'score': 1},
        ]
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        // Takes a list of widget
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScrore, _resetQuiz),
      ),
    );
  }
}
