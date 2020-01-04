import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  var resultScore = 0;

  Result(this.resultScore);

  String get resultPhrase{
    
    var resultText = 'You did it!';

    if(resultScore<=30){
      resultText = 'Great';
    }else{
      resultText = 'Excellent';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child : Text(resultPhrase, style: TextStyle(fontSize : 36))      
    );
  }
}
