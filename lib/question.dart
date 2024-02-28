import 'package:flutter/material.dart';
import 'package:kuis/widget/answer_button.dart';
import 'package:kuis/data/dataquestion.dart';

class QuestionScreen extends StatefulWidget{
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  final currentQuestion = questions[0];

  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestion.text,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 30),

          //dalam penggunaan shullfer disini tidak mengubah atau menghilangkan dari nilai yang sudah di mapping kan sebelumnya 
          ...currentQuestion.getShuffelAnswer().map((answer){
            return AnswerButton(answerText: answer, onTap: () {});
            //dimana list answerbutton yang sebelumnya didalam list answer.map()
            //setelah dikeluarkan dengan menggunakan[...] maka akan dijadikan list value indivindhu.
          })

          //cara pertama[1] dalam menggunakan data jawaban yang sudah dibuat
          // AnswerButton(answerText:currentQuestion.answer[0], onTap: () {}),
          // AnswerButton(answerText:currentQuestion.answer[1], onTap: () {}),
          // AnswerButton(answerText:currentQuestion.answer[2], onTap: () {}),
          // AnswerButton(answerText:currentQuestion.answer[3], onTap: () {}),
        ],
      ),
    );
  }
}