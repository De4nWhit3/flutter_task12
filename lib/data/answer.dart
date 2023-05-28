class Answer {
  final String answer;
  final bool isCorrect;

  Answer({required this.answer, required this.isCorrect});

  (String, bool) getAnswerInfo() {
    return (answer, isCorrect);
  }
}
