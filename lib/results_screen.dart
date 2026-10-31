import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summary/questions_summary.dart';

class ResultsScreen extends StatelessWidget{
  const ResultsScreen({required this.chosenAnswers, required this.restartQuiz, super.key});
  final void Function() restartQuiz;
  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer' :questions[i].answers[0],
        'user_answer': chosenAnswers[i],
      });

    }
    return summary;
  }

  int getCorrect(){
    int count = 0;
    for(int i = 0; i < chosenAnswers.length; i++){
      if (chosenAnswers[i] == questions[i].answers[0]){
        count += 1;
      }
    }
    return count;
  }

  @override
  Widget build(context){
    return SizedBox(
      width: double.infinity,
      child: Container(
        padding: EdgeInsets.only(top: 108, bottom: 108),
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Text('You answered ${getCorrect()} out of ${chosenAnswers.length} questions correctly!', 
              textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 19,
                )
            ),
            const SizedBox(height: 28),
            Expanded(
              child:  SingleChildScrollView(
                child: Column(
                  children: [
                    QuestionsSummary(summaryData: getSummaryData()),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 28),
            TextButton(onPressed: restartQuiz, child: Text('Restart Quiz!',
              style: TextStyle(color: Colors.white, fontSize: 16)),
            ),
          ],
        ),
      ),
    );
  }
}