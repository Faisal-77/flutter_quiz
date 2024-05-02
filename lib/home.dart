import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home(this.switchScreen, {super.key});

  final Function() switchScreen;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: Colors.white.withOpacity(0.65),
          ),
          const SizedBox(height: 80),
          Text(
            "Learn Flutter!",
            style: GoogleFonts.ptSerif(
                fontSize: 24, color: Colors.white.withOpacity(0.65)),
          ),
          const SizedBox(height: 50),
          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white.withOpacity(0.65),
            ),
            onPressed: switchScreen,
            label: Text(
              "Start Quiz",
              style: GoogleFonts.ptSerif(),
            ),
            icon: const Icon(Icons.arrow_right_alt_outlined),
          )
        ],
      ),
    );
  }
}
