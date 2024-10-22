import 'package:flutter/material.dart';
import './views/home_page.dart';
import 'package:provider/provider.dart';
import './viewmodel/card_viewmodel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   return ChangeNotifierProvider(
      create: (context) => CardViewModel(),
      child: MaterialApp(
        title: 'Jogo da memória SEMIG',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage(),
      )
    );
  }
}