import 'package:flutter/material.dart';
import 'package:practice/questions.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {super.key, required this.answerText, required this.onTap});
  final String answerText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: donothing,
      child: Text(answerText),
    );
  }
}
