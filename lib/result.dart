import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  String score;
  final Function restartQuiz;

  Result(this.score,  this.restartQuiz);

  @override
  Widget build(BuildContext context) {
    return Center(
      child :Column(
        children: [
          Text("Quiz is Finished. Your Total Score is: " + score, 
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),textAlign: TextAlign.center, ),
          FlatButton(
            child: Text("Restart Quiz", style: TextStyle(fontSize: 20, color: Colors.red),),
            onPressed: restartQuiz,
            // color: Colors.red,  
          ),
        ],
      )
    );
  }
}