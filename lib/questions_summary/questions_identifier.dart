import 'package:flutter/material.dart';

class QuestionsIdentifier extends StatelessWidget {
  const QuestionsIdentifier({
    super.key,
    required this.questionIndex,
    required this.isCorrectAnswer,
    });

  final int questionIndex;
  final bool isCorrectAnswer;

  @override
  Widget build(BuildContext context) {
    final questionNumber = questionIndex + 1;
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isCorrectAnswer 
        ? Colors.blue[300]
        : Colors.pink[200],
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        questionNumber.toString(),
        style: const TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}