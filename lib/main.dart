import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/quiz.dart';
import 'package:flutter_complete_guide/result.dart';

import './question.dart';
import './answer.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {"text": 'Black', "score": 1},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 8},
        {'text': 'White', 'score': 10}
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {"text": 'Snake', "score": 1},
        {'text': 'Lion', 'score': 5},
        {'text': 'Elephant', 'score': 8},
        {'text': 'Rabbit', 'score': 10}
      ],
    },
    {
      'questionText': 'Who\'s your favorite Actor?',
      'answers': [
        {"text": 'Salman', "score": 1},
        {'text': 'Aamir', 'score': 5},
        {'text': 'Hritik', 'score': 8},
        {'text': 'Shahrukh', 'score': 10}
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    // var dummy = const ['Hello'];
    // dummy.add('Max');
    // print(dummy);
    // dummy = [];
    // questions = []; // does not work if questions is a const

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: questions,
              )
            : Result(_totalScore),
      ),
    );
  }
}
