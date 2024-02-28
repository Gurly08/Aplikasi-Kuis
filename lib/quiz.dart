import 'package:flutter/material.dart';
import 'package:kuis/question.dart';
import 'package:kuis/widget/startquiz.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  //cara  pertama untuk merender up state konten
  // Widget? activeScreen;

  // @override
  // void initState() {
  //   activeScreen = StartQuiz(switchScreen);
  //   super.initState();
  // }

  // void switchScreen() {
  //   setState(() {
  //     activeScreen = const QuestionScreen();
  //   });
  // }  
 
  //cara dengan menggunakan if statement dalam merender kondisi
  var activeScreen = 'startquiz-screen';
  
  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartQuiz(switchScreen);

    if (activeScreen == 'question-screen') {
      screenWidget = const QuestionScreen();
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 78, 13, 151),
                Color.fromARGB(255, 107, 15, 168),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
