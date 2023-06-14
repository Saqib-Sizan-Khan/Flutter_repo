import 'package:flutter/material.dart';

class Game_Logic extends StatefulWidget {
  const Game_Logic({super.key});

  @override
  State<Game_Logic> createState() => _Game_LogicState();
}

class _Game_LogicState extends State<Game_Logic> {
  var game_state = GameState.empty;

  @override
  Widget build(BuildContext context) {
    return game_state == GameState.empty
        ? InkWell(
            child: Container(
              color: Colors.indigo,
            ),
            onTap: () {
              setState(() {
                game_state = GameState.cross;
              });
            },
          )
        : game_state == GameState.circle
            ? InkWell(
                child: Icon(
                  Icons.circle_outlined,
                  size: 100,
                  color: Colors.teal,
                ),
                onTap: () {
                  setState(() {
                    game_state = GameState.cross;
                  });
                },
              )
            : InkWell(
                child: Icon(
                  Icons.close,
                  size: 100,
                  color: Colors.redAccent,
                ),
                onTap: () {
                  setState(() {
                    game_state = GameState.circle;
                  });
                },
              );
  }
}

enum GameState {
  circle,
  cross,
  empty,
}
