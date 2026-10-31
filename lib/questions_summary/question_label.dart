import 'package:flutter/material.dart';

class QuestionLabel extends StatelessWidget {
  const QuestionLabel({super.key, required this.isCorrect, required this.index});
  final bool Function() isCorrect;
  final int index;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: isCorrect() ? const Color.fromARGB(255, 82, 173, 247) : const Color.fromARGB(255, 241, 78, 233),
      radius: 15,
      child: Text(
        (index + 1).toString(), 
        style: TextStyle(
          fontSize: 14, 
          color:Color.fromARGB(255, 78, 13, 151),
          fontWeight: FontWeight.bold
        )
      )
    );
  }
}