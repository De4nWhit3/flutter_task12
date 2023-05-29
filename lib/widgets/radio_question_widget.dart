import 'package:flutter/material.dart';

import '../data/answer.dart';

class RadioQuestionWidget extends StatefulWidget {
  final List<Answer> answers;
  const RadioQuestionWidget({super.key, required this.answers});

  @override
  State<RadioQuestionWidget> createState() => _RadioQuestionWidgetState();
}

class _RadioQuestionWidgetState extends State<RadioQuestionWidget> {
  String? _value;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: widget.answers.map((element) {
      return RadioListTile<String>(
        title: Text(element.answer),
        value: element.answer,
        groupValue: _value,
        onChanged: (String? value) {
          setState(() {
            _value = value;
          });
        },
      );
    }).toList());
  }
}
