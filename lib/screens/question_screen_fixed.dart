import 'package:flutter/material.dart';

import '../data/answer.dart';
import '../data/question.dart';
import '../widgets/date_question_widget.dart';
import '../widgets/question_widget_container.dart';
import '../widgets/radio_question_widget.dart';
import '../widgets/switch_question_widget_wrapper.dart';
import '../widgets/text_question_widget.dart';

class GenerateQuestion extends StatefulWidget {
  final List<Question> questions = [];
  GenerateQuestion({super.key}) {
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
    questions.add(
      Question(
          questionText: 'On which day is the Polo World Championship?',
          answers: [
            Answer(answer: 'SomeDate', isCorrect: true),
          ],
          category: 'sports',
          imgURL: 'assets/horse.jpeg',
          type: 'date',
          hint: 'It takes place on a Saturday in May.'),
    );
    questions.add(
      Question(
          questionText: 'Who is the most prominent figure in gravity?',
          answers: [
            Answer(answer: 'Isaac Newton', isCorrect: true),
            Answer(answer: 'Bill Gates', isCorrect: false),
            Answer(answer: 'Edgar Allan Poe', isCorrect: false),
            Answer(answer: 'Julius Malema', isCorrect: false),
          ],
          category: 'people',
          imgURL: 'assets/math.png',
          type: 'radio',
          hint: 'He lived in the 1600s.'),
    );
    questions.add(
      Question(
          questionText: 'What is the most famous Pokemon?',
          answers: [
            Answer(answer: 'Pikachu', isCorrect: true),
          ],
          category: 'characters',
          imgURL: 'assets/pokemon.jpeg',
          type: 'text',
          hint: 'It\'s considered a mouse with red cheeks.'),
    );
    questions.add(
      Question(
          questionText: 'Who below are related to the field of science?',
          answers: [
            Answer(answer: 'Albert Einstein', isCorrect: true),
            Answer(answer: 'Michio Kaku', isCorrect: true),
            Answer(answer: 'Elvis Presley', isCorrect: false),
            Answer(answer: 'Britney Spears', isCorrect: false),
          ],
          category: 'people',
          imgURL: 'assets/science.jpg',
          type: 'switch',
          hint: 'Include all fields of science'),
    );
  }

  @override
  State<GenerateQuestion> createState() => _GenerateQuestionState();
}

class _GenerateQuestionState extends State<GenerateQuestion> {
  List<MyDynamicWidget> myWidgets = [];
  int index = 0;

  addDynamic() {
    setState(() {});
    myWidgets.add(MyDynamicWidget(
      element: widget.questions[index++],
    ));
    if (index == widget.questions.length) {
      index = 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget questionBox = Flexible(
        child: ListView.builder(
            itemCount: myWidgets.length,
            itemBuilder: (_, index) => myWidgets[index]));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Add dynamically'),
      ),
      body: Column(
        children: [questionBox],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: addDynamic,
        child: const Icon(Icons.add),
      ),
    );
  }
}

class MyDynamicWidget extends StatelessWidget {
  MyDynamicWidget({super.key, required this.element});
  final Question element;

  @override
  Widget build(BuildContext context) {
    Widget widget = switch (element.type) {
      'date' => QuestionWidgetContainer(
          question: element,
          questionWidget: const DateQuestionWidget(),
        ),
      'radio' => QuestionWidgetContainer(
          question: element,
          questionWidget: RadioQuestionWidget(answers: element.answers),
        ),
      'text' => QuestionWidgetContainer(
          question: element,
          questionWidget: const TextQuestionWidget(),
        ),
      'switch' => QuestionWidgetContainer(
          question: element,
          questionWidget: SwitchQuestionWidgetWrapper(answers: element.answers),
        ),
      String() => const Placeholder(),
    };

    return Column(
      children: [
        widget,
        const SizedBox(
          height: 30,
        )
      ],
    );
  }
}

class MyQuestionPage extends StatefulWidget {
  const MyQuestionPage({super.key});

  @override
  State<MyQuestionPage> createState() => _MyQuestionPageState();
}

class _MyQuestionPageState extends State<MyQuestionPage> {
  @override
  Widget build(BuildContext context) {
    return GenerateQuestion();
  }
}
