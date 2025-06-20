import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';

void startQuizFn(BuildContext context) {
  Navigator.pushNamed(context, "/QuestionsScreen");
}

void showResulstFn(BuildContext context) {
  Navigator.pushNamed(context, "/ResultScreen");
}

void resturnQuizFn(BuildContext context) {
  Navigator.pushNamed(context, "/StartScreen");

  questionIndex = 0;
  correctAnswersCount = 0;
  correctAndTappedAnswers = [];
}

void checkAnswer({required String tappedAnswer}) {
  final String correctAnswer = questions[questionIndex].answers[0];

  if (correctAnswer == tappedAnswer) {
    correctAnswersCount++;
  }

  correctAndTappedAnswers.add({
    "correctAnswer": correctAnswer,
    "tappedAnswer": tappedAnswer,
    "isCorrect": correctAnswer == tappedAnswer,
  });
}

void tapAnswerFn(BuildContext context, {required String tappedAnswer}) {
  checkAnswer(tappedAnswer: tappedAnswer);

  if (questions.length == questionIndex + 1) {
    showResulstFn(context);
    return;
  }

  questionIndex++;
}
