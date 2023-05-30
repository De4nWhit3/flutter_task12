import 'package:flutter/material.dart';
import 'package:task_f6/screens/question_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const String appTitle = 'Dean\'s Quiz App';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const HomePage(appTitle: appTitle),
    );
  }
}

enum Screens { homeScreen, questionScreen }

class HomePage extends StatelessWidget {
  final String appTitle;

  const HomePage({super.key, required this.appTitle});

  @override
  Widget build(BuildContext context) {
    const currentScreen = Screens.questionScreen;
    // const currentScreen = Screens.questionScreen;

    switch (currentScreen) {
      case (Screens.questionScreen):
        // return QuestionScreen();
        return GenerateQuestion();
      default:
        return const Placeholder();
    }
  }
}
