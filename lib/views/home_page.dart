import 'package:flutter/material.dart';
import './memory_game.dart';
import './quizz_game.dart';
import './options.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isGameVisible = false;
  bool _isQuizzVisible = false;

  void _startMemoryGame() {
    setState(() {
      _isGameVisible = true;
      _isQuizzVisible = false;
    });
  }

  void _startQuizz() {
    setState(() {
      _isQuizzVisible = true;
      _isGameVisible = false;
    });
  }

  void _reset() {
    setState(() {
      _isGameVisible = false;
      _isQuizzVisible = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/fundo_semig.png'),
                fit: BoxFit.fill,
              )
            ), 
          ),
          if (!_isGameVisible && !_isQuizzVisible) 
            Options(onStartGame: _startMemoryGame, onStartQuizz: _startQuizz)
          else if (_isGameVisible) 
            MemoryGame()
          else if (_isQuizzVisible)
            QuizzGame(),
        ]
      )
    );
  }
}