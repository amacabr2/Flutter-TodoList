import 'package:flutter/material.dart';
import 'package:flutter_todo_list/components/forms/FormBuilder.dart';
import 'package:flutter_todo_list/components/PopButton.dart';
import 'package:flutter_todo_list/components/forms/todo.dart';
import 'package:flutter_todo_list/entities/Todo.dart';
import 'package:flutter_todo_list/routing/AppRoutes.dart';

class TodoScreen extends StatefulWidget {
  final String title;

  TodoScreen({Key key, this.title}) : super(key: key);

  @override
  _TodoScreenState createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  Todo todo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todo detail"),
        leading: PopButton(appRoute: AppRoutes.todosRoute),
      ),
      body: Center(
        child: SingleChildScrollView(
           child: Container(
             child: FormBuilder(
             form: TODO_FORM,
             onChanged: (Map<String, dynamic> response) => setState(() {
               this.todo = Todo.fromForm(response);
             }),
             onValidate: () => {
               print(this.todo)
             },
             ),
           )
        ),
      )
    );
  }
}
