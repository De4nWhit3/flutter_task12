import 'package:flutter/material.dart';

import 'screens/home_screen.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

enum Screens { homeScreen, questionScreen }

class _MyHomePageState extends State<MyHomePage> {
  // int _counter = 0;

  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    const currentScreen = Screens.homeScreen;
    // const currentScreen = Screens.questionScreen;

    switch (currentScreen) {
      case (Screens.homeScreen):
        return const HomeScreen();
      case (Screens.questionScreen):
        return const Placeholder();
      default:
        return const Placeholder();
    }
    // switch case
    // return Scaffold(
    //   appBar: AppBar(
    //     backgroundColor: Theme.of(context).colorScheme.inversePrimary,
    //     title: Text(widget.title),
    //   ),
    //   body: Center(
    //     child: Column(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: <Widget>[
    //         const TextField(
    //           decoration: InputDecoration(
    //             border: OutlineInputBorder(),
    //             hintText: 'Enter a search term',
    //           ),
    //         ),
    //         const Text(
    //           'You have pushed the button this many times:',
    //         ),
    //         Text(
    //           '$_counter',
    //           style: Theme.of(context).textTheme.headlineMedium,
    //         ),
    //       ],
    //     ),
    //   ),
    //   floatingActionButton: FloatingActionButton(
    //     onPressed: _incrementCounter,
    //     tooltip: 'Increment',
    //     child: const Icon(Icons.add),
    //   ),
    // );
  }
}





// TODO: ADD CLASS FOR A RADIOQUESTION WIDGET USING RECORDS+
// TODO: ADD CLASS FOR A SWITCHQUESTION WIDGET USING RECORDS+
// TODO: ADD CLASS FOR A TEXTINPUT WIDGET USING RECORDS+ (base question class)
// TODO: RETURN MORE THAN 1 VALUE FROM A FUNCTION +
// TODO: USE NAMED FOR LOOPS

// TODO: ADD CODE FOR A RADIOQUESTION WIDGET
// TODO: ADD CODE FOR A SWITCHQUESTION WIDGET
// TODO: ADD CODE FOR A TEXTINPUT WIDGET
// TODO: ADD CODE FOR A DATE INPUT WIDGET

// TODO: USE CUSTOM INK AND INKWELL BUTTON
// TODO: USE GESTURE DETECTOR