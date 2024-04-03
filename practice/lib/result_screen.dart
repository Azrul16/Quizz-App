import 'package:flutter/material.dart';
import 'package:practice/data/questions.dart';
import 'package:practice/question_summery.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    super.key,
    required this.choosenAnswer,
  });
  final List<String> choosenAnswer;

  List<Map<String, Object>> getSummeryData() {
    final List<Map<String, Object>> summery = [];

    for (var i = 0; i < choosenAnswer.length; i++) {
      summery.add(
        {
          'question_index': i,
          'question': questions[i].text,
          'correct_answer': questions[i].answer[0],
          'user_answer': choosenAnswer[i],
        },
      );
    }
    return summery;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummeryData();
    final noTotalAnswer = questions.length;
    final noCorrectAnser = summaryData.where((data) {
      return data['correct_answer'] == data['user_answer'];
    }).length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'You answered $noCorrectAnser out of $noTotalAnswer question correctly!',
            ),
            const SizedBox(
              height: 30,
            ),
            QuestionSummery(
              summaryData,
            ),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Restart Quiz'),
            ),
          ],
        ),
      ),
    );
  }
}
