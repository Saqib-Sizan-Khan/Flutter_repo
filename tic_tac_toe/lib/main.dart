import 'package:flutter/material.dart';
import 'package:tic_tac_toe/game_setup_2/ttt_full_game.dart';
import 'package:tic_tac_toe/game_setup_1/ttt_game_logic.dart';

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
      home: TTT_Game_Logic(),
    );
  }
}