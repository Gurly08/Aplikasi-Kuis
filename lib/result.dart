import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

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