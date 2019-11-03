import 'package:flutter/material.dart';

class Question extends StatelessWidget {

  final questions;
  final questionIndex;

  Question(this.questions, this.questionIndex);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
         questions[questionIndex]['question'],
         style: TextStyle(fontSize: 28),
      ),
    );
  }
}

