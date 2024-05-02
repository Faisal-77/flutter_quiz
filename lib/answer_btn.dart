import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnswerBtn extends StatelessWidget {
  const AnswerBtn({
    super.key,
    required this.answerText,
    required this.onPressed,
  });

  final String answerText;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Colors.deepPurple[900],
        textStyle:
            GoogleFonts.ptSerif(fontSize: 16, fontWeight: FontWeight.bold),
        padding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 40,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        answerText,
        textAlign: TextAlign.center,
      ),
    );
  }
}
