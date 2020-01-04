import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  var questions;
  var questionIndex;
  var answerQuestion;

  Quiz(this.questions, this.questionIndex, this.answerQuestion);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questions[questionIndex]['questionText']),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(()=>answerQuestion(answer['text']), answer['text']);
        }).toList()
      ],
    );
  }
}
