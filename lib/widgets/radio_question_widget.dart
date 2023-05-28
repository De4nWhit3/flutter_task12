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
      children: [
        // TODO: use list.generate or .map to generate the radios
        RadioListTile<String>(
          title: Text(widget.answers[0].answer),
          value: widget.answers[0].answer,
          groupValue: _value,
          onChanged: (String? value) {
            setState(() {
              _value = value;
            });
          },
        ),
        RadioListTile<String>(
          title: Text(widget.answers[1].answer),
          value: widget.answers[1].answer,
          groupValue: _value,
          onChanged: (String? value) {
            setState(() {
              _value = value;
            });
          },
        ),
        RadioListTile<String>(
          title: Text(widget.answers[2].answer),
          value: widget.answers[2].answer,
          groupValue: _value,
          onChanged: (String? value) {
            setState(() {
              _value = value;
            });
          },
        ),
      ],
    );
  }
}
