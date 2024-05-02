import 'dart:developer';

import 'package:app02/data/questions.dart';
import 'package:app02/home.dart';
import 'package:app02/question_page.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  final List<String> selectedAnswers = [];
  Widget? activeScreen;

  void chooseAnswer(String answer) {
    log(answer);
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        selectedAnswers.clear();
        activeScreen = Home(switchScreen);
      });
    }
    log(selectedAnswers.toString());
  }

  @override
  void initState() {
    super.initState();
    activeScreen = Home(switchScreen);
  }

  void switchScreen() {
    setState(() {
      activeScreen = QuestionsPage(chooseAnswer);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.deepPurpleAccent,
                Colors.purple,
              ],
            ),
          ),
          child: activeScreen,
        ),
      ),
    );
  }
}
