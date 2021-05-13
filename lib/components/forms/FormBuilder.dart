import 'package:flutter/material.dart';
import 'package:json_to_form/json_to_form.dart';
import 'package:flutter_todo_list/components/Button.dart';

class FormBuilder extends StatelessWidget {
  final String form;
  final ValueChanged<Map<String, dynamic>> onChanged;
  final VoidCallback onValidate;

  FormBuilder({
    @required this.form,
    @required this.onChanged,
    @required this.onValidate
  });

  Map<String, dynamic> _computeResponse(dynamic response) {
    Map<String, dynamic> mapResponse = {};
    response.forEach((field) => mapResponse[field['key']] = field['response']);
    return mapResponse;
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      new CoreForm(
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: BorderSide(width: 2, color: Colors.red)
        ),
        form: this.form,
        onChanged: (dynamic response) => this.onChanged(this._computeResponse(response)),
      ),
      new Button(
          index: 'validate-form',
          text: 'Valider',
          primary: Colors.green,
          textColor: Colors.green,
          onPress: this.onValidate
      )
    ]);
  }
}