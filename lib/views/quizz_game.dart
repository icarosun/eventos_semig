import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../viewmodel/quizz_gamemodel.dart';

class QuizzGame extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => QuizzViewModel(),
      child: Consumer<QuizzViewModel>(
        builder: (context, viewModel, child) {
          final question = viewModel.questions[viewModel.currentQuestionIndex];
          
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  question.question,
                  style: TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                ...question.answers.map((answer) {
                  return TextButton(
                    onPressed: () {
                      viewModel.checkAnswer(answer);
                      Future.delayed(Duration(seconds: 1), () {
                        viewModel.nextQuestion();
                      });
                    },
                    child: Text(answer),
                  );
                }).toList(),
                if (viewModel.isAnswerCorrect != null) 
                  Text(
                    viewModel.isAnswerCorrect! ? 'Correto!' : 'Errado!',
                    style: TextStyle(fontSize: 20, color: viewModel.isAnswerCorrect! ? Colors.green : Colors.red),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}
