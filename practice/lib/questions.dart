import 'package:flutter/material.dart';
import 'package:practice/answer_button.dart';
import 'package:practice/data/questions.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

donothing() {}

class _QuestionScreenState extends State<QuestionScreen> {
  _QuestionScreenState();

  @override
  Widget build(context) {
    final currentQuestion = questions[0];
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestion.text,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          ...currentQuestion.answer.map((answer) {
            return AnswerButton(
              answerText: answer,
              onTap: () {},
            );
          })
        ],
      ),
    );
  }
}
