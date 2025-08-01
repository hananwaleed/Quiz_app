import 'package:flutter/material.dart';
import 'package:quiz/homeScreen.dart';
import 'package:quiz/questions.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;
  @override
  void initState() {
   
    super.initState();
    activeScreen = Homescreen(switchScreen: switchScreen);
  }

  void switchScreen() {
    setState(() {
      activeScreen = Questions();
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
            ),
          ),
          child: activeScreen,
        ),
      ),
    );
  }
}
