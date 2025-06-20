import 'package:flutter/material.dart';

import 'package:quiz_app/services/functions.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/quiz_text.png", height: 180.0),

            const SizedBox(height: 80.0),

            ElevatedButton(
              onPressed: () => startQuizFn(context),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(200, 50),
                backgroundColor: const Color.fromARGB(255, 5, 86, 86),
              ),
              child: Text("Start Quiz", style: TextStyle(color: const Color.fromARGB(255, 29, 200, 231), fontSize: 19.0, fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
    );
  }
}
