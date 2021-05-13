import 'package:flutter/material.dart';
import 'package:flutter_todo_list/components/forms/FormBuilder.dart';
import 'package:flutter_todo_list/components/forms/auth.dart';
import 'package:flutter_todo_list/entities/AuthUser.dart';
import 'package:flutter_todo_list/services/AuthUserService.dart';

class AuthScreen extends StatefulWidget {
  final String title;

  AuthScreen({Key key, this.title}): super(key: key);

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  AuthUser user;
  AuthUserService authUserService = new AuthUserService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Auth'),
      ),
      body: Container(
        child: FormBuilder(
          form: AUTH_FORM,
          onChanged: (Map<String, dynamic> response) => setState(() {
            this.user = AuthUser.fromForm(response);
          }),
          onValidate: () {
            this.authUserService.auth(this.user).then((value) => value.toJson());
          },
        ),
      ),
    );
  }
}
