import 'package:flutter/material.dart';
import 'package:kuis/data/dataquestion.dart';
import 'package:kuis/question.dart';
import 'package:kuis/result.dart';
import 'package:kuis/widget/startquiz.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {

  //Alasan karena menggunkan list string dikarenakan saat list itu akan terisi (walaupun disitu masih kosong) akan didapatkan jenis string
  List<String> selectedAnswer = [];//[] ini masih kosong 
  //cara dengan menggunakan if statement dalam merender kondisi
  var activeScreen = 'startquiz-screen';
  
  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswer.add(answer);

    //logic jika pertanyaan selesai maka akan ditampilkan ke result screen
    if (selectedAnswer.length == questions.length) {
      setState(() {
        // selectedAnswer = []; //code ini dihapus sementara karena tampilan akan fokus,
        // pada menampilkan hasil jawaban yang dipilih.
        activeScreen = 'result-screen';
      });
    }
  }

  void restartQuiz() {
    setState(() {
      selectedAnswer= [];
      activeScreen = 'question-screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartQuiz(switchScreen);

    if (activeScreen == 'question-screen') {
      screenWidget = QuestionScreen(onSelectAnswer: chooseAnswer,);
    }

    if (activeScreen == 'result-screen') {
      screenWidget = ResultScreen(
        chosenAnswers: selectedAnswer,
        onRestart: restartQuiz,
        );
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
 