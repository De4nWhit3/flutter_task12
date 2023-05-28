import 'package:flutter/material.dart';

class TextQuestionWidget extends StatelessWidget {
  const TextQuestionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TextField(
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                width: 2,
                color: Colors.black,
              )),
              hintText: 'Enter your answer'),
        ),
      ],
    );
  }
}
