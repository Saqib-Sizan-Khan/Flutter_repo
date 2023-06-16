import 'package:flutter/material.dart';

class TTT_Full_Game extends StatefulWidget {
  const TTT_Full_Game({super.key});

  @override
  State<TTT_Full_Game> createState() => _TTT_Full_GameState();
}

class _TTT_Full_GameState extends State<TTT_Full_Game> {
  int _scoreX = 0;
  int _scoreO = 0;
  bool _turnO = true;
  bool win = false;
  String winner = '';
  int _fillBoxes = 0;
  bool _gamefrezze = false;
  String _winBoxes = '';
  List<String> _gridList = ['', '', '', '', '', '', '', '', ''];
  final List<String> _wingridList = [
    '0',
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'Tic Tac Toe',
          style: TextStyle(fontSize: 24),
        )),
        actions: [
          InkWell(
              onTap: () {
                setState(() {
                  _turnO = true;
                  win = false;
                  winner = '';
                  _fillBoxes = 0;
                  _gamefrezze = false;
                  _gridList = ['', '', '', '', '', '', '', '', ''];
                });
              },
              child: Icon(
                Icons.restart_alt_outlined,
                size: 35,
                color: Colors.white,
              )),
          SizedBox(
            width: 15,
          )
        ],
        elevation: 0,
        backgroundColor: Colors.grey[900],
        toolbarHeight: 80,
      ),
      body: Column(
        children: [_pointsTable(), _gameGrid(), _playerTurn()],
      ),
    );
  }

  Widget _pointsTable() {
    return Expanded(
        flex: 1,
        child: Container(
          margin: EdgeInsets.only(top: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    'Player O',
                    style: TextStyle(
                        fontSize: 28,
                        color: Colors.teal,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    _scoreO.toString(),
                    style: TextStyle(
                        fontSize: 28,
                        color: Colors.teal,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                width: 50,
              ),
              Column(
                children: [
                  Text(
                    'Player X',
                    style: TextStyle(
                        fontSize: 28,
                        color: Colors.redAccent,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    _scoreX.toString(),
                    style: TextStyle(
                        fontSize: 28,
                        color: Colors.redAccent,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
        ));
  }

  Widget _gameGrid() {
    return Expanded(
      flex: 2,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: GridView.builder(
            itemCount: 9,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, mainAxisSpacing: 10, crossAxisSpacing: 10),
            itemBuilder: (BuildContext context, int index) {
              return _gamefrezze
                  ? Container(
                      decoration: BoxDecoration(
                          color: _wingridList[index] == _winBoxes[0] ||
                                  _wingridList[index] == _winBoxes[1] ||
                                  _wingridList[index] == _winBoxes[2]
                              ? Colors.limeAccent
                              : Colors.transparent,
                          border:
                              Border.all(color: Colors.indigo, width: 5),
                          borderRadius: BorderRadius.circular(20)),
                      child: _gridList[index] == ''
                          ? Container()
                          : _gridList[index] == 'x'
                              ? Icon(
                                  Icons.close,
                                  size: 60,
                                  color: Colors.redAccent,
                                )
                              : Icon(
                                  Icons.circle_outlined,
                                  size: 60,
                                  color: Colors.teal,
                                ))
                  : InkWell(
                      onTap: () {
                        _pressed(index);
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.indigo, width: 5),
                              borderRadius: BorderRadius.circular(20)),
                          child: _gridList[index] == ''
                              ? Container()
                              : _gridList[index] == 'x'
                                  ? Icon(
                                      Icons.close,
                                      size: 60,
                                      color: Colors.redAccent,
                                    )
                                  : Icon(
                                      Icons.circle_outlined,
                                      size: 60,
                                      color: Colors.teal,
                                    )),
                    );
            }),
      ),
    );
  }

  Widget _playerTurn() {
    return Expanded(
      flex: 1,
      child: Column(
        children: [
          Visibility(
            visible: !win,
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text(
                _turnO ? 'Turn of O' : 'Turn of X',
                style: TextStyle(
                    color: _turnO ? Colors.teal : Colors.redAccent,
                    fontSize: 26,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
          Visibility(
            visible: win,
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text(
                winner == 'Draw'
                    ? 'Match is Draw'
                    : winner == 'o'
                        ? 'Winner is O'
                        : 'Winner is X',
                style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 28,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _pressed(int index) {
    setState(() {
      if (_turnO && _gridList[index] == '') {
        _gridList[index] = 'o';
        _fillBoxes += 1;
        _turnO = !_turnO;
      } else if (!_turnO && _gridList[index] == '') {
        _gridList[index] = 'x';
        _fillBoxes += 1;
        _turnO = !_turnO;
      }

      winner = checkWinner();
      if (winner == 'o') {
        _scoreO += 1;
        _gamefrezze = true;
      } else if (winner == 'x') {
        _scoreX += 1;
        _gamefrezze = true;
      }
    });
  }

  String checkWinner() {
    if (checkGrid(0, 1, 2)) {
      win = true;
      _winBoxes = '012';
      return _gridList[0];
    }
    if (checkGrid(3, 4, 5)) {
      win = true;
      _winBoxes = '345';
      return _gridList[3];
    }
    if (checkGrid(6, 7, 8)) {
      win = true;
      _winBoxes = '678';
      return _gridList[6];
    }
    if (checkGrid(0, 3, 6)) {
      win = true;
      _winBoxes = '036';
      return _gridList[0];
    }
    if (checkGrid(1, 4, 7)) {
      win = true;
      _winBoxes = '147';
      return _gridList[1];
    }
    if (checkGrid(2, 5, 8)) {
      win = true;
      _winBoxes = '258';
      return _gridList[2];
    }
    if (checkGrid(0, 4, 8)) {
      win = true;
      _winBoxes = '048';
      return _gridList[0];
    }
    if (checkGrid(2, 4, 6)) {
      win = true;
      _winBoxes = '246';
      return _gridList[2];
    }
    if (_fillBoxes == 9) {
      win = true;
      return 'Draw';
    } else {
      return '';
    }
  }

  bool checkGrid(int index0, int index1, int index2) {
    if (_gridList[index0] == _gridList[index1] &&
        _gridList[index0] == _gridList[index2] &&
        _gridList[index0] != '') {
      return true;
    } else {
      return false;
    }
  }
}
