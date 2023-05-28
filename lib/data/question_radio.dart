import 'package:task_f6/data/question.dart';

import 'answer.dart';

class QuestionRadio extends Question {
  List<Answer> possibleAnswers;

  QuestionRadio({
    required super.questionText,
    required super.correctAnswer,
    required super.category,
    required super.imgURL,
    required this.possibleAnswers,
  });

  List<Answer> getAnswers() {
    return possibleAnswers;
  }
}
