import 'package:flutter/material.dart';
import 'package:my_quiz_app/answer.dart';
import 'package:my_quiz_app/question.dart';
import 'package:my_quiz_app/result.dart';


void main() {
  runApp(MyQuizApp());
}

class MyQuizApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyQuizAppState();
  }
}

class MyQuizAppState extends State<MyQuizApp> {

  var questions = [
    {
      'question': "3 x 3 is equal to:",
      'answer': [
        {'text': '19', 'score': 1,},
        {'text': '9', 'score': 1},
        {'text': '3', 'score': 1},
        {'text': '18', 'score': 1},
      ],
      'correctAns': '9',
    },
    {
      'question': "5^2 is equal to:",
      'answer': [
        {'text': '52', 'score': 1},
        {'text': '50', 'score': 1},
        {'text': '25', 'score': 1},
        {'text': '32', 'score': 1},
      ],
      'correctAns': '25',
    },
    {
      'question': "(3+5)/2 is equal to:",
      'answer': [
        {'text': '4', 'score': 1},
        {'text': '5.5', 'score': 1},
        {'text': '8', 'score': 1},
        {'text': '1', 'score': 1},
      ],
      'correctAns': '4',
    },
    {
      'question': "3(2*3)-17 is equal to:",
      'answer': [
        {'text': '1', 'score': 1},
        {'text': '-9', 'score': 1},
        {'text': '-3', 'score': 1},
        {'text': '18', 'score': 1},
      ],
      'correctAns': '1'
    },
  ];

  var questionIndex = 0;
  var totalScore = 0;

  void changeQuestion(String userAnswer, int score){

    if(userAnswer == questions[questionIndex]['correctAns']){
       totalScore += score;
       print(totalScore);
    }

    setState(() {
     questionIndex++;
    });

  }

  void restartQuiz(){
    setState(() {
     questionIndex = 0;
     totalScore = 0;
    });
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Math Quiz App"),),
        body: questionIndex < questions.length ? Column(
          children: [
            Question(questions, questionIndex),
            ...(questions[questionIndex]['answer'] as List<Map<String, Object>>).map((answer){
              return Answer(answer['text'], answer['score'], changeQuestion);
            }).toList(),
          ],
        ) : Result(totalScore.toString(), restartQuiz),
        ),
    );
  }
}



// Column(
//           children: <Widget>[
//             Text(questions[questionIndex]['question']),
//             Container(
//               width: double.infinity,
//               child: RaisedButton(
//                 color: Colors.blue,
//                 child: Text((questions[questionIndex]['answer'] as List<Map<String, Object>>).map((answer){
//                    answer['text'];
//                 })),
//                 onPressed: null,
//               )
//             ),
//           ],
//         )