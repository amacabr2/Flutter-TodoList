import 'package:flutter/material.dart';

class TodoScreen extends StatefulWidget {
  TodoScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _TodoScreenState createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('azerty'),
    );
  }
}
