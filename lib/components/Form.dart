import 'package:flutter/material.dart';
import 'package:json_to_form/json_to_form.dart';
import 'package:flutter_todo_list/components/Button.dart';

class Form extends StatelessWidget {
  final String form;
  final ValueChanged<dynamic> onChanged;
  final VoidCallback onValidate;

  Form({
    @required this.form,
    @required this.onChanged,
    @required this.onValidate}
  );

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      new CoreForm(
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: BorderSide(width: 2, color: Colors.red)
        ),
        form: this.form,
        onChanged: this.onChanged,
      ),
      new Button(
          index: 'validate-form',
          text: 'Créer une tache',
          primary: Colors.green,
          textColor: Colors.green,
          onPress: this.onValidate
      )
    ]);
  }
}