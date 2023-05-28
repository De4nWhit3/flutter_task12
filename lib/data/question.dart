import 'answer.dart';

class Question {
  final String questionText;
  final List<Answer> answers;
  final String category;
  final String imgURL;
  final String type; // radio, date, text, or switch
  final String hint;

  Question(
      {required this.questionText,
      required this.answers,
      required this.category,
      required this.imgURL,
      required this.type,
      required this.hint});

  (String, String, String) getQuestionInfo() {
    return (
      questionText,
      category,
      imgURL,
    );
  }
}
