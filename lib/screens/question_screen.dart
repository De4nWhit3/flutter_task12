import 'package:flutter/material.dart';
import 'package:task_f6/data/answer.dart';

import '../data/question.dart';

class QuestionScreen extends StatelessWidget {
  final List<Question> questions = [];
  QuestionScreen({
    super.key,
  }) {
    questions.add(
      Question(
          questionText: 'On what day is family day?',
          answers: [Answer(answer: 'SomeDate', isCorrect: true)],
          category: 'Public Holidays',
          imgURL: 'assets/family.jpg',
          type: 'date',
          hint: 'Use the date picker above to select your answer.'),
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
              QuestionWidgetContainer(
                question: questions[0],
                questionWidget: const DateQuestionWidget(),
              ),
              const SizedBox(
                height: 30,
              ),
              QuestionWidgetContainer(
                question: questions[0],
                questionWidget: const RadioQuestionWidget(),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RadioQuestionWidget extends StatefulWidget {
  const RadioQuestionWidget({super.key});

  @override
  State<RadioQuestionWidget> createState() => _RadioQuestionWidgetState();
}

class _RadioQuestionWidgetState extends State<RadioQuestionWidget> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class QuestionWidgetContainer extends StatelessWidget {
  const QuestionWidgetContainer({
    super.key,
    required this.question,
    required this.questionWidget,
  });

  final Question question;
  final Widget questionWidget;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.orange.shade700,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.orange.shade900.withOpacity(.9),
                blurRadius: 10,
              )
            ],
          ),
          width: MediaQuery.of(context).size.width * 0.8,
          child: Column(
            children: [
              Text(
                question.questionText,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 200,
                width: 300,
                clipBehavior: Clip.antiAlias,
                child: Image(
                  image: AssetImage(question.imgURL),
                  fit: BoxFit.fill,
                  height: double.infinity,
                  width: double.infinity,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              questionWidget,
              const SizedBox(
                height: 10,
              ),
              Text(
                question.hint,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class DateQuestionWidget extends StatelessWidget {
  const DateQuestionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) => FloatingActionButton(
        foregroundColor: Colors.orange.shade50,
        backgroundColor: Colors.orange.shade400,
        child: const Icon(Icons.date_range),
        onPressed: () => showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime.now().subtract(
            const Duration(days: 365),
          ),
          lastDate: DateTime.now().add(
            const Duration(days: 365),
          ),
        ),
      ),
    );
  }
}
