import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kuis/questions_summary/questions_identifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData, {super.key});

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer = 
      itemData['user_answer'] == itemData['correct_answer'];

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionsIdentifier(
          questionIndex: itemData['question_index'] as int, 
          isCorrectAnswer: isCorrectAnswer,
        ),
        //Expended digunakan untuk memperluas tampilan tataletak, yang ada
        //didalam sebuah widget lain.
        const SizedBox(width: 30),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                itemData['question'] as String,
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              //satu untuk jawaban yang dipilih
              Text(
                itemData['user_answer'] as String,
                style: GoogleFonts.poppins(
                  color: Colors.white60,
                ),
              ),
              //lalu untuk jawaban yang benar
              Text(
                itemData['correct_answer'] as String,
                style: GoogleFonts.poppins(
                  color: Colors.blueAccent[100],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
