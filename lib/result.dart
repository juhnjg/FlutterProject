import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  int resultScore = 0;
  final Function restartHanlder;

  Result(this.resultScore, this.restartHanlder);

  String get resultPhrase {
    var resultText = 'You did it!';

    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (resultScore <= 12) {
      resultText = 'Pretty Likeable';
    } else if (resultScore <= 16) {
      resultText = "You are so bad!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 36),
          textAlign: TextAlign.center,
        ),
        FlatButton(
          child: Text('Restart Quiz'),
          textColor: Colors.blue,
          onPressed: restartHanlder,
        )
      ],
    ));
  }
}
