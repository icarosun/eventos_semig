import 'package:flutter/material.dart';
import './views/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
        title: 'Jogo da memória SEMIG',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage(),
    );
  }
}