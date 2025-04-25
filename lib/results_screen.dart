import 'package:flutter/material.dart';
import 'package:myapp/data/questions.dart';
import 'package:myapp/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    // required this.numberOfCorrectAnswer,
    // required this.totalQuestion,
    required this.chosenAnswers,
  });

  // final int numberOfCorrectAnswer;
  // final int totalQuestion;
  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final int numberOfCorrectAnswer = questions.length;
    final int totalQuestion =
        summaryData
            .where((data) => data['user_answer'] == data['correct_answer'])
            .length;
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You answered $numberOfCorrectAnswer out of $totalQuestion questions correctly',
            ),
            SizedBox(height: 30),
            QuestionsSummary(summaryData: summaryData),
            SizedBox(height: 30),
            TextButton(onPressed: () {}, child: Text("The")),
          ],
        ),
      ),
    );
  }
}
