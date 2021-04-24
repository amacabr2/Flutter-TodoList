import 'package:flutter/material.dart';
import 'package:flutter_todo_list/screens/HomeScreen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomeScreen(title: 'Quizz'),
    );
  }
}