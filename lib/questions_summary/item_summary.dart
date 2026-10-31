import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/questions_summary/question_label.dart';

class ItemSummary extends StatelessWidget{
  const ItemSummary({super.key, required this.item});
  final Map<String,Object> item;

  bool isCorrect(){
    return item['user_answer'] == item["correct_answer"];
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.only(top: 18),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuestionLabel(
            isCorrect: isCorrect, 
            index: item['question_index'] as int
          ),
          const SizedBox(width: 19),
          
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(item['question'] as String,
                  style: GoogleFonts.lato(
                    color: Colors.white, 
                    fontWeight: FontWeight.bold, 
                    fontSize: 16,
                  )
                ),
                
                const SizedBox(height: 3),
                Text(item['user_answer'] as String,
                  style: TextStyle(
                    color: const Color.fromARGB(255, 241, 78, 233), 
                    fontSize: 15,
                  ),
                ),
                
                Text(item['correct_answer'] as String,
                  style: TextStyle(
                    color: const Color.fromARGB(255, 82, 173, 247), 
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}