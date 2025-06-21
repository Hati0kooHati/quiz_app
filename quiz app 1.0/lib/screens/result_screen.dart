import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/services/functions.dart';

import 'package:flutter/material.dart';


class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Correct answers $correctAnswersCount out of ${questions.length}",
            style: TextStyle(
              color: const Color.fromARGB(255, 255, 255, 255),
              fontSize: 55.0,
            ),
            textAlign: TextAlign.center,
          ),

          const SizedBox(height: 40.0),

          SizedBox(
            height: 500,
            child: ListView.builder(
              itemCount: correctAndTappedAnswers.length,
              itemBuilder: (context, index) {
                final String question = questions[index].question;
                final String correctAnswer =
                    correctAndTappedAnswers[index]["correctAnswer"] as String;
                final String tappedAnswer =
                    correctAndTappedAnswers[index]["tappedAnswer"] as String;
                final bool isCorrect =
                    correctAndTappedAnswers[index]["isCorrect"] as bool;

                return Card(
                  margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),

                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.white,
                          const Color.fromARGB(255, 17, 35, 171),
                        ],
                      ),
                    ),

                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.all(3.0),
                              height: 40.0,
                              width: 40.0,
                              decoration: BoxDecoration(
                                color: isCorrect
                                    ? const Color.fromARGB(255, 6, 11, 155)
                                    : const Color.fromARGB(255, 192, 21, 9),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Center(
                                child: Text(
                                  "${index + 1}",
                                  style: TextStyle(fontSize: 22.0),
                                ),
                              ),
                            ),

                            Expanded(
                              child: Column(
                                children: [
                                  Text(
                                    question,
                                    style: TextStyle(
                                      fontSize: 17.0,
                                      color: Colors.black,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  Text(
                                    correctAnswer,
                                    style: TextStyle(
                                      color: const Color.fromARGB(
                                        255,
                                        112,
                                        234,
                                        145,
                                      ),
                                      fontSize: 17.0,
                                    ),
                                  ),
                                  Text(
                                    tappedAnswer,
                                    style: TextStyle(
                                      color: isCorrect
                                          ? const Color.fromARGB(
                                              255,
                                              112,
                                              234,
                                              145,
                                            )
                                          : const Color.fromARGB(
                                              255,
                                              237,
                                              46,
                                              33,
                                            ),
                                      fontSize: 17.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),

          SizedBox(height: 30.0,),

          ElevatedButton(
            onPressed: () {
              resturnQuizFn(context);
            },

            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 8, 10, 115),
              shadowColor: const Color.fromARGB(255, 21, 5, 112),
              minimumSize: Size(200, 50),
            ),
            child: Text("Try again"),
          ),

          const SizedBox(height: 100.0),
        ],
      ),
    );
  }
}
