import 'package:flutter/material.dart';

class TTT_Game_UI extends StatefulWidget {
  const TTT_Game_UI({super.key});

  @override
  State<TTT_Game_UI> createState() => _TTT_Game_UIState();
}

class _TTT_Game_UIState extends State<TTT_Game_UI> {
  int _scoreX = 0;
  int _scoreO = 0;
  bool _turnO = true;
  bool win = false;
  String winner = '';
  int _fillBoxes = 0;
  bool gamefrezze = false;
  List<String> _gridList = ['', '', '', '', '', '', '', '', ''];

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
                  gamefrezze = false;
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
      backgroundColor: Colors.grey[900],
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
                    style: TextStyle(fontSize: 28, color: Colors.white),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    _scoreO.toString(),
                    style: TextStyle(fontSize: 28, color: Colors.white),
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
                    style: TextStyle(fontSize: 28, color: Colors.white),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    _scoreX.toString(),
                    style: TextStyle(fontSize: 28, color: Colors.white),
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
      child: GridView.builder(
          itemCount: 9,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, mainAxisSpacing: 10, crossAxisSpacing: 10),
          itemBuilder: (BuildContext context, int index) {
            return gamefrezze
                ? Container(
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: Colors.grey.shade600, width: 3),
                        borderRadius: BorderRadius.circular(20)),
                    child: _gridList[index] == ''
                        ? Container()
                        : _gridList[index] == 'x'
                            ? Icon(
                                Icons.close,
                                size: 50,
                                color: Colors.redAccent,
                              )
                            : Icon(
                                Icons.circle_outlined,
                                size: 50,
                                color: Colors.teal,
                              ))
                : InkWell(
                    onTap: () {
                      _pressed(index);
                    },
                    child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.grey.shade600, width: 3),
                            borderRadius: BorderRadius.circular(20)),
                        child: _gridList[index] == ''
                            ? Container()
                            : _gridList[index] == 'x'
                                ? Icon(
                                    Icons.close,
                                    size: 50,
                                    color: Colors.redAccent,
                                  )
                                : Icon(
                                    Icons.circle_outlined,
                                    size: 50,
                                    color: Colors.teal,
                                  )),
                  );
          }),
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
                style: TextStyle(color: Colors.white, fontSize: 24),
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
                    color: Colors.blue,
                    fontSize: 28,
                    fontWeight: FontWeight.w600),
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
        gamefrezze = true;
      } else if (winner == 'x') {
        _scoreX += 1;
        gamefrezze = true;
      }
    });
  }

  String checkWinner() {
    if (checkGrid(0, 1, 2)) {
      win = true;
      return _gridList[0];
    }
    if (checkGrid(3, 4, 5)) {
      win = true;
      return _gridList[3];
    }
    if (checkGrid(6, 7, 8)) {
      win = true;
      return _gridList[6];
    }
    if (checkGrid(0, 3, 6)) {
      win = true;
      return _gridList[0];
    }
    if (checkGrid(1, 4, 7)) {
      win = true;
      return _gridList[1];
    }
    if (checkGrid(2, 5, 8)) {
      win = true;
      return _gridList[2];
    }
    if (checkGrid(0, 4, 8)) {
      win = true;
      return _gridList[0];
    }
    if (checkGrid(2, 4, 6)) {
      win = true;
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
