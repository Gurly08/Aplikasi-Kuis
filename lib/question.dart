import 'package:flutter/material.dart';
import 'package:kuis/widget/answer_button.dart';
import 'package:kuis/data/dataquestion.dart';

class QuestionScreen extends StatefulWidget {
  // Perbaiki konstruktor seperti di bawah ini
  const QuestionScreen({Key? key, required this.onSelectAnswer}) : super(key: key);

  // Ubah deklarasi onSelectAnswer seperti ini
  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  var taskQuestionIndex = 0;

  void answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      taskQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[taskQuestionIndex];
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
          // Gunakan .toList() setelah map() untuk memastikan tipe List
          ...currentQuestion.getShuffelAnswer().map((answer) {
            return AnswerButton(
              answerText: answer,
              onTap: () {
                answerQuestion(answer);
              },
            );
          }).toList(),
        ],
      ),
    );
  }
}
