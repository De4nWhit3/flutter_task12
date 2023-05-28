import 'package:flutter/material.dart';
import 'package:task_f6/data/answer.dart';

import '../data/question.dart';
import '../widgets/date_question_widget.dart';
import '../widgets/question_widget_container.dart';
import '../widgets/radio_question_widget.dart';
import '../widgets/submit_button_widget.dart';
import '../widgets/switch_question_widget_wrapper.dart';
import '../widgets/text_question_widget.dart';

class QuestionScreen extends StatelessWidget {
  final List<Question> questions = [];
  QuestionScreen({
    super.key,
  }) {
    questions.add(
      Question(
          questionText: 'On what day is family day?',
          answers: [
            Answer(answer: 'SomeDate', isCorrect: true),
          ],
          category: 'Public Holidays',
          imgURL: 'assets/family.jpg',
          type: 'date',
          hint: 'Use the date picker above to select your answer.'),
    );
    questions.add(
      Question(
          questionText: 'How many fingers does Mickey Mouse have?',
          answers: [
            Answer(answer: 'Five', isCorrect: false),
            Answer(answer: 'Four', isCorrect: true),
            Answer(answer: 'Six', isCorrect: false),
          ],
          category: 'characters',
          imgURL: 'assets/mickey.jpg',
          type: 'radio',
          hint: 'Select one of the above answers by clicking on the radios.'),
    );
    questions.add(
      Question(
          questionText:
              'Unscramble the following letters into a word: APPEIPLNE',
          answers: [
            Answer(answer: 'PINEAPPLE', isCorrect: true),
          ],
          category: 'food',
          imgURL: 'assets/fruits.jpg',
          type: 'text',
          hint: 'It is a yellow fruit.'),
    );
    questions.add(
      Question(
          questionText: 'Which of the following ingredients go into a cake?',
          answers: [
            Answer(answer: 'eggs', isCorrect: true),
            Answer(answer: 'flour', isCorrect: true),
            Answer(answer: 'hand lotion', isCorrect: false),
            Answer(answer: 'milk', isCorrect: true),
          ],
          category: 'food',
          imgURL: 'assets/cake.jpg',
          type: 'switch',
          hint:
              'Toggle the switches to indicate which ingredients are correct.'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Questions'),
        backgroundColor: Colors.orange.shade900,
      ),
      backgroundColor: Colors.orange.shade300,
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(
          top: 20,
          bottom: 20,
        ),
        child: Center(
          child: Column(
            children: [
              // TODO: Loop over questions and generate the correct widget based on question type. eg, radio, date, or text
              QuestionWidgetContainer(
                question: questions[0],
                questionWidget: const DateQuestionWidget(),
              ),
              const SizedBox(
                height: 30,
              ),
              QuestionWidgetContainer(
                question: questions[1],
                questionWidget:
                    RadioQuestionWidget(answers: questions[1].answers),
              ),
              const SizedBox(
                height: 30,
              ),
              QuestionWidgetContainer(
                question: questions[2],
                questionWidget: const TextQuestionWidget(),
              ),
              const SizedBox(
                height: 30,
              ),
              QuestionWidgetContainer(
                question: questions[3],
                questionWidget:
                    SwitchQuestionWidgetWrapper(answers: questions[3].answers),
              ),
              const SizedBox(
                height: 30,
              ),
              const SubmitButtonWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
