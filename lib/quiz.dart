import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _QuizState();
  }
}

class _QuizState extends State<Quiz>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return StartScreen();
  }
  
}