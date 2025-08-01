import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz/data/question.dart';
import 'package:quiz/models/answer_button.dart';

class Questions extends StatefulWidget {
  const Questions({super.key});

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  final currentQuestion = questions[1];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            currentQuestion.text,
            style: GoogleFonts.aDLaMDisplay(
              fontSize: 26,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 25),
          ...currentQuestion.getshuffledAnswers().map((e) {
            return Container(
              margin: EdgeInsets.all(5),
              child: AnswerButton(answerText: e, onPressed: () {}),
            );
          }),
        ],
      ),
    );
  }
}
