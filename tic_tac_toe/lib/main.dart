import 'package:flutter/material.dart';
import 'package:tic_tac_toe/game_setup/ttt_game_UI.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TTT_Game_UI(),
    );
  }
}