import 'package:flutter/material.dart';

import './questions.dart';
import './answer.dart';

void main() {
  runApp(MyApp()); //runApp is a Function provided by Flutter in material.dart
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {

  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;  
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite colour?',
      'What\'s your favourite animal?',
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
          ),
          body: Column(
            children: [
              Question(questions[_questionIndex],),
              Answer(_answerQuestion),
              Answer(_answerQuestion),
              Answer(_answerQuestion),
            ],
          ),
       ),
    ); //MaterialApp is a widget provided by Flutter that helps render widgets as app on screen.
  }
} //MaterialApp can take various optional named arguments
