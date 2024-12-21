import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
    required this.startQuiz,
    required this.profile,
  });

  final void Function() startQuiz;
  final void Function() profile;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Opacity(
            opacity: 0.3,
            child: Image.asset(
              'assets/images/quiz-logo.png',
              width: 180,
            ),
          ),
          const SizedBox(height: 30),
          Text(
            "Quiz App",
            style: GoogleFonts.lato(
              textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 34,
              ),
            ),
          ),
          const Text(
            "praktikum mobile 50",
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 30),
          TextButton(
            onPressed: startQuiz,
            style: TextButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Colors.deepPurple,
            ),
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.arrow_right_alt),
                SizedBox(
                  width: 8,
                ),
                Text('Start Quiz'),
              ],
            ),
          ),
          const SizedBox(height: 10),
          TextButton(
            onPressed: profile,
            style: TextButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Colors.deepPurple,
            ),
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.account_circle),
                SizedBox(
                  width: 8,
                ),
                Text('Profile'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
