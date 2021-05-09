import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final index;
  final VoidCallback onPress;
  final String text;
  final Color primary;
  final Color textColor;

  Button({
    @required this.index,
    @required this.onPress,
    @required this.text,
    @required this.primary,
    @required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: this.onPress,
      child: Text(text),
      style: OutlinedButton.styleFrom(
          primary: primary,
          textStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: this.textColor
          )
      )
    );
  }
}