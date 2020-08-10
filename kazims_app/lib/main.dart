import 'package:flutter/material.dart';

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
    setState(() {
      questionIndex += 1;
    });
    print(questionIndex);
  }

  //Here the method starts where app is built
  @override
  Widget build(BuildContext context) {
    var questions = [
      "Whats your name?",
      "Are you a loser?Don't answer we know hahahah"
    ];
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Kazim App'),
        ),
        body: Column(
          children: [
            Text(
                questions[questionIndex],
            ),
            RaisedButton(
                child: Text('Answer 1'),
                onPressed: answerQuestion),
            RaisedButton(
                child: Text('Answer 2'),
                onPressed: (){
                  //...
                  print("Bruhhhh");
                }),
            RaisedButton(
                child: Text('Answer 3'),
                onPressed: null),
          ],
        ),
      ),
    );
  }
}