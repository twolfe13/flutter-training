import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  // startQuiz is an argument that contains "a function as a value"
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        // note centered on column axis (different for row)
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            // adds color on the image. Can add transparent color for opacity (first argument in .frontARGB)
            color: const Color.fromARGB(150, 244, 67, 54),
          ),
          // typically avoid opacity for performance
          // Opacity(
          //   opacity: 0.6,
          //   child: Image.asset(
          //     'assets/images/quiz-logo.png',
          //     width: 300,
          //   ),

          const SizedBox(height: 80),
          const Text(
            'Learn Flutter the fun way!',
            style: TextStyle(
              color: Color.fromARGB(255, 237, 224, 255),
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 30),
          // Using icon type of button .icon()
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Start Quiz!'),
          )
        ],
      ),
    );
  }
}
