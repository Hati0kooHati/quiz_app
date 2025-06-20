import 'package:quiz_app/model/question.dart';

List<Question> questions = [
  Question(
    question: "Today weather is",
    answers: ["cloudly", "sunny", "rainy", "snow"],
  ),
  Question(
    question: "Who is the first president of USA ?",
    answers: ["Washington", "Linkoln", "Japarov", "Hitler"],
  ),
  Question(
    question: "Who won WW2 ?",
    answers: ["Allies", "Germany", "India", "Axis"],
  ),
  Question(
    question: "Which University is the best in KG ?",
    answers: ["Manas", "AUCA", "UCA", "Ala-Too"],
  ),
  Question(
    question: "Which College has opened it's doors this year ?",
    answers: ["Intellect", "TSI", "KRSU", "Ala-Too"],
  ),
  Question(
    question: "Today weather is",
    answers: ["cloudly", "sunny", "rainy", "snow"],
  ),
  Question(
    question: "Who is the first president of USA ?",
    answers: ["Washington", "Linkoln", "Japarov", "Hitler"],
  ),
  Question(
    question: "Who won WW2 ?",
    answers: ["Allies", "Germany", "India", "Axis"],
  ),
  Question(
    question: "Which University is the best in KG ?",
    answers: ["Manas", "AUCA", "UCA", "Ala-Too"],
  ),
  Question(
    question: "Which College has opened it's doors this year ?",
    answers: ["Intellect", "TSI", "KRSU", "Ala-Too"],
  ),
];

int questionIndex = 0;
int correctAnswersCount = 0;

List<Map<String, Object>> correctAndTappedAnswers = [];
