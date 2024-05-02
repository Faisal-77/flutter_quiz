import 'package:app02/answer_btn.dart';
import 'package:flutter/material.dart';
import 'package:app02/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsPage extends StatefulWidget {
  const QuestionsPage(this.onSelectedAnswer, {super.key});
  final void Function(String) onSelectedAnswer;
  @override
  State<QuestionsPage> createState() => _QuestionsPageState();
}

class _QuestionsPageState extends State<QuestionsPage> {
  var currentQuestionIndex = 0;

  nextQuestion(String answer) {
    widget.onSelectedAnswer(answer);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];
    return Container(
      margin: const EdgeInsets.all(40),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            currentQuestion.text,
            textAlign: TextAlign.center,
            style: GoogleFonts.ptSerif(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 40),
          ...currentQuestion.getShuffledAnswers().map((answer) {
            return Container(
              margin: const EdgeInsets.all(5),
              child: AnswerBtn(
                onPressed: () => nextQuestion(answer),
                answerText: answer,
              ),
            );
          }),
        ],
      ),
    );
  }
}
