import 'package:flutter/material.dart';

class Buttonstart extends StatelessWidget {
  const Buttonstart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/quiz-logo.png', width: 200),
        const SizedBox(height: 20),
        TextButton(
          onPressed: () {
            print('Start Quiz pressed');
            // Or navigate to another screen
          },
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 24),
          ),
          child: const Text('Start Quiz'),
        ),
      ],
    );
  }
}
