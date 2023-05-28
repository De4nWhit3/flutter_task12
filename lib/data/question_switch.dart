import 'package:task_f6/data/question.dart';

class QuestionSwitch extends Question {
  late List<String> optionsToToggle;

  QuestionSwitch({
    required super.questionText,
    required super.correctAnswer,
    required super.category,
    required super.imgURL,
    required this.optionsToToggle,
  });

  List<String> getOptions() {
    return optionsToToggle;
  }
}
