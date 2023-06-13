import 'package:flutter/material.dart';
import 'package:tic_tac_toe/game_setup/ttt_game_logic.dart';

class TTT_Game_UI extends StatelessWidget {
  const TTT_Game_UI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            height: 400,
            width: 400,
            child: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, crossAxisSpacing: 10, mainAxisSpacing: 10),
              children: [
                Container(
                  child: Game_Logic(),
                ),
                Container(
                  child: Game_Logic(),
                ),
                Container(
                  child: Game_Logic(),
                ),
                Container(
                  child: Game_Logic(),
                ),
                Container(
                  child: Game_Logic(),
                ),
                Container(
                  child: Game_Logic(),
                ),
                Container(
                  child: Game_Logic(),
                ),
                Container(
                  child: Game_Logic(),
                ),
                Container(
                  child: Game_Logic(),
                )
              ],
            )),
      ),
    );
  }
}
