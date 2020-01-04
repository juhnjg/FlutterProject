import 'package:flutter/material.dart';
import './result.dart';
import './quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  var _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Blue', 'score': 30},
        {'text': 'Gray', 'score': 20},
        {'text': 'Yellow', 'score': 10},
        {'text': 'White', 'score': 0}
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Tiger', 'score': 30},
        {'text': 'Monkey', 'score': 20},
        {'text': 'Squarrel', 'score': 10},
        {'text': 'Pig', 'score': 0}
      ]
    },
    {
      'questionText': 'What\'s your ex-girlfriens name?',
      'answers': [
        {'text': 'Jane', 'score': 30},
        {'text': 'Niche', 'score': 20},
        {'text': 'Kristina', 'score': 10},
        {'text': 'Lorence', 'score': 0}
      ]
    }
  ];

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex += 1;
    });

    print("Answer chosen.");
    print('total score is :' + _totalScore.toString());
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(_questions, _questionIndex, _answerQuestion)
            : Result(_totalScore),
      ),
    );
  }
}
