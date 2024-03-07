import 'package:flutter/material.dart';
import 'package:kuis/data/dataquestion.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.chosenAnswers});

  final List<String> chosenAnswers;


  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for(var i = 0; i < chosenAnswers.length; i++) {
      summary.add(
        {
          'question_index': i,
          'question': questions[i].text,
          'correct_answer': questions[i].answer[0],
          'user_answer': chosenAnswers[i],
        }
      );
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          children: [
            const Text('Selamat Nilai kamu 80 yaitu dari 10 pertanyaan yang benar 8!!'),
            const SizedBox(height: 30),
            const Text('List question and answer'),
            const SizedBox(height: 30),
            TextButton(
              onPressed: () {}, 
              child: const Text('Mulai Ulang!')
            )
          ],
        ),
      ),
    );
  }
}