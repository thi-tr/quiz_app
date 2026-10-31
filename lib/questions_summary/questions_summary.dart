import 'package:flutter/material.dart';
import 'package:quiz_app/questions_summary/item_summary.dart';

class QuestionsSummary extends StatelessWidget{
  const QuestionsSummary({super.key, required this.summaryData});
  
  final List<Map<String,Object>> summaryData;

  @override
  Widget build(context){
    return Column(
      children: summaryData.map((data){
        return ItemSummary(item: data);
      }).toList(),
    );
  }
}