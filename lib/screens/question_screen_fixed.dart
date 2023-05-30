import 'package:flutter/material.dart';

class GenerateQuestion extends StatefulWidget {
  const GenerateQuestion({super.key});

  @override
  State<GenerateQuestion> createState() => _GenerateQuestionState();
}

class _GenerateQuestionState extends State<GenerateQuestion> {
  List<MyDynamicWidget> myWidgets = [];

  addDynamic() {
    setState(() {});
    myWidgets.add(const MyDynamicWidget());
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
  const MyDynamicWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            width: 200,
            height: 200,
            color: Colors.red,
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
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
    return const GenerateQuestion();
  }
}
