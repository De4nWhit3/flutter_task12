import 'package:flutter/material.dart';

import 'screens/question_screen.dart';

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
        return const QuestionScreen();
      default:
        return const Placeholder();
    }
  }
}





// TODO: ADD CLASS FOR A RADIOQUESTION WIDGET USING RECORDS+
// TODO: ADD CLASS FOR A SWITCHQUESTION WIDGET USING RECORDS+
// TODO: ADD CLASS FOR A TEXTINPUT WIDGET USING RECORDS+ (base question class)
// TODO: ADD A CLASS FOR DATE INPUT QUESTIONS USING DATETIME
// TODO: RETURN MORE THAN 1 VALUE FROM A FUNCTION +
// TODO: USE NAMED FOR LOOPS

// TODO: ADD CODE FOR A RADIOQUESTION WIDGET
// TODO: ADD CODE FOR A SWITCHQUESTION WIDGET
// TODO: ADD CODE FOR A TEXTINPUT WIDGET
// TODO: ADD CODE FOR A DATE INPUT WIDGET

// TODO: USE CUSTOM INK AND INKWELL BUTTON
// TODO: USE GESTURE DETECTOR