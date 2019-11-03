import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final buttonText;
  final score;
  final Function changeQuestion;

  Answer(this.buttonText, this.score, this.changeQuestion);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        child: Text(buttonText),
        onPressed:  () => changeQuestion(buttonText, score),
        color: Colors.blue,
      ),
    );
  }
}