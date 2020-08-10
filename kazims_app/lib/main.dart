import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp>{
  var questionIndex = 0;

  //This is the method that changes state of the app for now
  void answerQuestion(){
    if(questionIndex >=2){
      questionIndex -=1;
    }
    setState(() {
      questionIndex += 1;
    });
    print(questionIndex);
  }

  void RestartApp(){
    setState(() {
      questionIndex = 0;
    });
  }

  //Here the method starts where app is built
  @override
  Widget build(BuildContext context) {
    const questions = [
      {
        'questionText':'Whats your name?',
        'answers': ['Naqi', 'Aammar', 'Ayman']
      },
      {
        'questionText': 'Whats your fav color?',
        'answers': ['Rainbow', 'Yaari ky rang', 'BlackBox']
      },
      {
        'questionText': 'Who is your daddy?',
        'answers' : ['Kazim', 'Syed Kazim', 'Kazim Miyazaki']
      }
    ];
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Kazim App'),
        ),
        body: Column(
          children: [
            Question(
                questions[questionIndex]['questionText'],
            ),
            ...(questions[questionIndex]['answers'] as List<String>).map((answer){
              return Answer(answerQuestion,answer);
            }).toList(),
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
            onPressed: RestartApp,
            label: Text('Restart'),
            icon: Icon(Icons.autorenew),
            backgroundColor: Colors.blueAccent,
        ),
      ),
    );
  }
}
