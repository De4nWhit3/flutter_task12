import 'package:flutter/material.dart';

import '../data/answer.dart';

class SwitchQuestionWidget extends StatefulWidget {
  const SwitchQuestionWidget({super.key, required this.answer});
  final Answer answer;

  @override
  State<SwitchQuestionWidget> createState() => _SwitchQuestionWidgetState();
}

class _SwitchQuestionWidgetState extends State<SwitchQuestionWidget> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(widget.answer.answer),
      Switch(
        value: selected,
        activeColor: Colors.yellow,
        onChanged: (bool value) {
          setState(() {
            selected = value;
          });
        },
      ),
    ]);
  }
}
