import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/fundo_semig.png'),
            fit: BoxFit.fill,
          )
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  //Navigator.push(
                  //  context,
                  //  MaterialPageRoute(builder: (context) => QuizPage()),
                  //);
                },
                child: Text('Quizz')
              ),
              TextButton(
                onPressed: () {
                  //Navigator.push(
                  //  context,
                  //  MaterialPageRoute(builder: (context) => QuizPage()),
                  //);
                },
                child: Text('Jogo da Memória')
              ),
              TextButton(onPressed: () {}, child: Text('Jogo')),
            ],
          )
        ),
      ),
    );
  }
}