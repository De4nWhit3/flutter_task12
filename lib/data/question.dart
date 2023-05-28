class Question {
  final String questionText;
  final String correctAnswer;
  final String category;
  final String imgURL;

  Question({
    required this.questionText,
    required this.correctAnswer,
    required this.category,
    required this.imgURL,
  });

  (String, String, String, String) getQuestionInfo() {
    return (
      questionText,
      correctAnswer,
      category,
      imgURL,
    );
  }
}
