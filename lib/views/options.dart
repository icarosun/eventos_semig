import 'package:flutter/material.dart';

class Options extends StatelessWidget {
  final VoidCallback onStartGame;
  final VoidCallback onStartQuizz;

  Options({required this.onStartGame, required this.onStartQuizz});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Tela Principal',
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: onStartGame,
            child: Text('Iniciar Jogo de Memória'),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: onStartQuizz,
            child: Text('Iniciar Quiz'),
          ),
        ],
      ),
    );
  }
}