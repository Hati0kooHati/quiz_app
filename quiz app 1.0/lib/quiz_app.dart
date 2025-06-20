import 'package:flutter/material.dart';

import 'package:quiz_app/screens/questions_screen.dart';
import 'package:quiz_app/screens/result_screen.dart';
import 'package:quiz_app/screens/start_screen.dart';

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      routes: {
        "/StartScreen": (context) => StartScreen(),
        "/QuestionsScreen": (context) => QuestionScreen(),
        "/ResultScreen": (context) => ResultScreen(),
      },
      home: StartScreen(),
    );
  }
}
