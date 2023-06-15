import 'package:flutter/material.dart';
import 'package:tic_tac_toe/game_setup/box_icon.dart';
import 'game_states.dart';
import 'box_icon.dart';

class TTT_Game_Logic extends StatefulWidget {
  const TTT_Game_Logic({super.key});

  @override
  State<TTT_Game_Logic> createState() => _TTT_Game_LogicState();
}

class _TTT_Game_LogicState extends State<TTT_Game_Logic> {
  BoxState a = BoxState.empty;
  BoxState b = BoxState.empty;
  BoxState c = BoxState.empty;
  BoxState d = BoxState.empty;
  BoxState e = BoxState.empty;
  BoxState f = BoxState.empty;
  BoxState g = BoxState.empty;
  BoxState h = BoxState.empty;
  BoxState i = BoxState.empty;

  bool crossTurn = true;
  GameState gameState = GameState.gameNotfinished;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Tic Tac Toe'),
        ),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      crossTurn ? 'Turn: Cross' : 'Turn: Circle',
                      style:
                          TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
                    ),
                  )),
              Expanded(
                flex: 3,
                child: GridView(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ),
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          if (a == BoxState.empty) {
                            if (crossTurn) {
                              a = BoxState.cross;
                            } else {
                              a = BoxState.circle;
                            }
                            crossTurn = !crossTurn;
                            gameLogic();
                          }
                        });
                      },
                      child: Container(
                          color: Colors.indigo, child: BoxIcon(boxState: a)),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          if (b == BoxState.empty) {
                            if (crossTurn) {
                              b = BoxState.cross;
                            } else {
                              b = BoxState.circle;
                            }
                            crossTurn = !crossTurn;
                            gameLogic();
                          }
                        });
                      },
                      child: Container(
                          color: Colors.indigo, child: BoxIcon(boxState: b)),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          if (c == BoxState.empty) {
                            if (crossTurn) {
                              c = BoxState.cross;
                            } else {
                              c = BoxState.circle;
                            }
                            crossTurn = !crossTurn;
                            gameLogic();
                          }
                        });
                      },
                      child: Container(
                          color: Colors.indigo, child: BoxIcon(boxState: c)),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          if (d == BoxState.empty) {
                            if (crossTurn) {
                              d = BoxState.cross;
                            } else {
                              d = BoxState.circle;
                            }
                            crossTurn = !crossTurn;
                            gameLogic();
                          }
                        });
                      },
                      child: Container(
                          color: Colors.indigo, child: BoxIcon(boxState: d)),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          if (e == BoxState.empty) {
                            if (crossTurn) {
                              e = BoxState.cross;
                            } else {
                              e = BoxState.circle;
                            }
                            crossTurn = !crossTurn;
                            gameLogic();
                          }
                        });
                      },
                      child: Container(
                          color: Colors.indigo, child: BoxIcon(boxState: e)),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          if (f == BoxState.empty) {
                            if (crossTurn) {
                              f = BoxState.cross;
                            } else {
                              f = BoxState.circle;
                            }
                            crossTurn = !crossTurn;
                            gameLogic();
                          }
                        });
                      },
                      child: Container(
                          color: Colors.indigo, child: BoxIcon(boxState: f)),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          if (g == BoxState.empty) {
                            if (crossTurn) {
                              g = BoxState.cross;
                            } else {
                              g = BoxState.circle;
                            }
                            crossTurn = !crossTurn;
                            gameLogic();
                          }
                        });
                      },
                      child: Container(
                          color: Colors.indigo, child: BoxIcon(boxState: g)),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          if (h == BoxState.empty) {
                            if (crossTurn) {
                              h = BoxState.cross;
                            } else {
                              h = BoxState.circle;
                            }
                            crossTurn = !crossTurn;
                            gameLogic();
                          }
                        });
                      },
                      child: Container(
                          color: Colors.indigo, child: BoxIcon(boxState: h)),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          if (i == BoxState.empty) {
                            if (crossTurn) {
                              i = BoxState.cross;
                            } else {
                              i = BoxState.circle;
                            }
                            crossTurn = !crossTurn;
                            gameLogic();
                          }
                        });
                      },
                      child: Container(
                          color: Colors.indigo, child: BoxIcon(boxState: i)),
                    ),
                  ],
                ),
              ),
            ],
          ),
          gameState != GameState.gameNotfinished
              ? Container(
                  color: Colors.purpleAccent.withOpacity(0.8),
                )
              : Container()
        ],
      ),
    );
  }

  void gameLogic() {
    if (a == b && a == c && a != BoxState.empty) {
      a == BoxState.circle
          ? gameState = GameState.circlewin
          : gameState = GameState.crosswin;
    }
    if (d == e && d == f && d != BoxState.empty) {
      d == BoxState.circle
          ? gameState = GameState.circlewin
          : gameState = GameState.crosswin;
    }
    if (g == h && g == i && g != BoxState.empty) {
      g == BoxState.circle
          ? gameState = GameState.circlewin
          : gameState = GameState.crosswin;
    }
    if (a == d && a == g && a != BoxState.empty) {
      a == BoxState.circle
          ? gameState = GameState.circlewin
          : gameState = GameState.crosswin;
    }
    if (b == e && b == h && b != BoxState.empty) {
      b == BoxState.circle
          ? gameState = GameState.circlewin
          : gameState = GameState.crosswin;
    }
    if (c == f && c == i && c != BoxState.empty) {
      c == BoxState.circle
          ? gameState = GameState.circlewin
          : gameState = GameState.crosswin;
    }
    if (a == e && a == i && a != BoxState.empty) {
      a == BoxState.circle
          ? gameState = GameState.circlewin
          : gameState = GameState.crosswin;
    }
    if (c == e && c == g && c != BoxState.empty) {
      c == BoxState.circle
          ? gameState = GameState.circlewin
          : gameState = GameState.crosswin;
    }
  }
}
