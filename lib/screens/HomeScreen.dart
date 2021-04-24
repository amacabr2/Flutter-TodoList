import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
            new Card(
              elevation: 5,
              margin: EdgeInsets.only(bottom: 10),
              child: new Container(
                height: MediaQuery.of(context).size.width * 0.7,
                width: MediaQuery.of(context).size.width * 0.7,
                child: new Image.asset('assets/quizz_cover.jpg', fit: BoxFit.cover),
              ),
            ),
          ],
        ),
      ),
    );
  }
}