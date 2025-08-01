import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key, required this.switchScreen});
  final void Function() switchScreen;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 250,
            color: Colors.white.withOpacity(0.8),
          ),
          SizedBox(height: 60),
          Text(
            "learn Flutter".toUpperCase(),
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 60),
          OutlinedButton.icon(
            onPressed: switchScreen,
            icon: Icon(Icons.arrow_forward, color: Colors.white),
            label: Text(
              "Start Quiz",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
