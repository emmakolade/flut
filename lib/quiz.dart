import 'package:flutter/material.dart';
import 'package:myapp/start_screen.dart';
import 'package:myapp/questions_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  // Widget? activeScreen;

  // @override
  // void initState() {
  //   activeScreen =  StartScreen(switchScreen);
  //   super.initState();
  // }

  var activeScreen = "start-screen";

  void switchScreen() {
    setState(() {
      // activeScreen = const QuestionsScreen();
      activeScreen = "questions-screen";
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);
    if (activeScreen == "questions-screen") {
      screenWidget = const QuestionsScreen();
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 116, 39, 204),
                Color.fromARGB(255, 22, 5, 43),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child:screenWidget
        ),
      ),
    );
  }
}
