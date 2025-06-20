import 'package:quiz_app/services/functions.dart';
import 'package:flutter/material.dart';

import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/model/question.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    final Question currentQuestion = questions[questionIndex];
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              currentQuestion.question,
              style: TextStyle(color: const Color.fromARGB(255, 65, 249, 255), fontSize: 30.0,), textAlign: TextAlign.center,
            ),

            const SizedBox(height: 70.0),

            ...currentQuestion.shuffledAnswers.map((answer) {
              return Container(
                margin: EdgeInsets.all(5.0),

                width: 390.0,
                height: 50.0,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  border: Border.all(color: Colors.white, width: 0.6),

                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      const Color.fromARGB(255, 7, 2, 2),
                      const Color.fromARGB(255, 7, 150, 133),
                      // const Color.fromARGB(255, 9, 116, 114),
                      // const Color.fromARGB(255, 0, 0, 0)
                    ],
                  ),
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                  ),

                  onPressed: () => setState(() {
                    tapAnswerFn(context, tappedAnswer: answer);
                  }),
                  child: Text(answer, style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255), fontSize: 20.0),),
                ),
              );
            }),
            const SizedBox(height: 100.0),
          ],
        ),
      ),
    );
  }
}
