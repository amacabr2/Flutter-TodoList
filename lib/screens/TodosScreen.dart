import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter_todo_list/components/Button.dart';
import 'package:flutter_todo_list/routing/AppRoute.dart';
import 'package:flutter_todo_list/routing/AppRouter.dart';

class TodosScreen extends StatefulWidget {
  TodosScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _TodosScreenState createState() => _TodosScreenState();
}

class _TodosScreenState extends State<TodosScreen> {
  final _router = FluroRouter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Button(
                index: 'add-todo',
                onPress: () => AppRouter.router.navigateTo(
                  context,
                  AppRoutes.todoRoute.route,
                ),
                text: 'Créer une tache',
                primary: Colors.green,
                textColor: Colors.green
            )
          ],
        ),
      ),
    );
  }
}