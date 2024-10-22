import 'package:flutter/material.dart';
import '../model/question.dart';

class QuizzViewModel extends ChangeNotifier {
  final List<Question> _questions = [
    Question(
      question: 'Qual estado possui a maior reserva de gás natural em terra do Brasil?',
      answers: ['Amazonas', 'Pará', 'Rio de Janeiro'],
      correctAnswer: 'Amazonas',
    ),
    Question(
      question: 'Onde podemos encontrar gás natural?',
      answers: ['Apenas em áreas urbanas', 'Apenas no fundo dos oceanos', 'Em depósitos subterrâneos'],
      correctAnswer: 'Em depósitos subterrâneos',
    ),
  ];

  int _currentQuestionIndex = 0;
  bool? _isAnswerCorrect;

  List<Question> get questions => _questions;
  int get currentQuestionIndex => _currentQuestionIndex;
  bool? get isAnswerCorrect => _isAnswerCorrect;

  void checkAnswer(String answer) {
    _isAnswerCorrect = answer == _questions[_currentQuestionIndex].correctAnswer;
    notifyListeners();
  }

  void nextQuestion() {
    if (_currentQuestionIndex < _questions.length - 1) {
      _currentQuestionIndex++;
      _isAnswerCorrect = null;
      notifyListeners();
    }
  }

  void resetQuiz() {
    _currentQuestionIndex = 0;
    _isAnswerCorrect = null;
    notifyListeners();
  }
}
