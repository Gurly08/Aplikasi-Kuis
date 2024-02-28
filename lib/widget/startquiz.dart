import 'package:flutter/material.dart';

class StartQuiz extends StatelessWidget {
  const StartQuiz(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          //berikut adalah cara untuk memberikan transparant pada gambar:
    
          //Berikut cara Pertama (1) yaitu dengan menggunakan proporti "color:" untuk memberirikan warna transparant, dengan valu = 150,255,255,255
            Image.asset(
              'assets/images/quiz-logo.png', 
                width: 250,
                color: const Color.fromARGB(150, 255, 255, 255),
            ),
            const SizedBox(height: 18),
            const Text(
              'Learn Flutter the fun way!',
              style: TextStyle(
                color: Color.fromARGB(255, 237, 223, 252),
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 30),
            OutlinedButton.icon(
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text('Start Quiz'),
            ),
        ],
      ),
    );
  }
}