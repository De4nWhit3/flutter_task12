import 'package:flutter/material.dart';

import '../data/answer.dart';
import 'switch_question_widget.dart';

class SwitchQuestionWidgetWrapper extends StatelessWidget {
  const SwitchQuestionWidgetWrapper({super.key, required this.answers});
  final List<Answer> answers;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SwitchQuestionWidget(answer: answers[0]),
        SwitchQuestionWidget(answer: answers[1]),
        SwitchQuestionWidget(answer: answers[2]),
        SwitchQuestionWidget(answer: answers[3]),
      ],
    );
  }
}
