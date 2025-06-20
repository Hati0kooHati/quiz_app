class Question {
  const Question({required this.question, required this.answers});

  final String question;
  final List<String> answers;

  List<String> get shuffledAnswers {
    List<String> shuffledAnswers = [];

    shuffledAnswers.addAll(answers);
    shuffledAnswers.shuffle();
    
    return shuffledAnswers;
  }
}