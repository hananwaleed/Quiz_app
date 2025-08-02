import 'package:flutter/material.dart';
import 'package:quiz/homeScreen.dart';
import 'package:quiz/questions.dart';
import 'package:quiz/data/question.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
   List<String> selectedAnswers = [];
  Widget? activeScreen;

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
     setState(() {
       selectedAnswers = [];
        activeScreen = Homescreen(switchScreen: switchScreen);
     });
    }
  }

  @override
  void initState() {
    super.initState();
    activeScreen = Homescreen(switchScreen: switchScreen);
  }

  void switchScreen() {
    setState(() {
      activeScreen = Questions(onSelectAnswer: chooseAnswer);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.deepOrangeAccent, Colors.purpleAccent],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: activeScreen,
        ),
      ),
    );
  }
}
