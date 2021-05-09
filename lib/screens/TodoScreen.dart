import 'package:flutter/material.dart';
import 'package:flutter_todo_list/components/PopButton.dart';
import 'package:flutter_todo_list/routing/AppRoutes.dart';

class TodoScreen extends StatefulWidget {
  TodoScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _TodoScreenState createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todo detail"),
        leading: PopButton(appRoute: AppRoutes.todosRoute),
      ),
      body: Center(
        child: Text('azerty'),
      )
    );
  }
}
