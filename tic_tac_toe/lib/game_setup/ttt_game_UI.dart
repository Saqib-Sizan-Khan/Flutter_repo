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
  List<String> _gridList = ['','','','','','','','',''];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Tic Tac Toe', style: TextStyle(fontSize: 24),)),
        elevation: 0,
        backgroundColor: Colors.grey[900],
      ),
      backgroundColor: Colors.grey[900],
      body: Column(
        children: [
          _pointsTable(),
          _gameGrid(),
          _playerTurn()
        ],
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
                  Text('Player O', style: TextStyle(fontSize: 28, color: Colors.white),),
                  SizedBox(height: 20,),
                  Text('0', style: TextStyle(fontSize: 28, color: Colors.white),),
                ],
              ),
              SizedBox(width: 50,),
              Column(
                children: [
                  Text('Player X', style: TextStyle(fontSize: 28, color: Colors.white),),
                  SizedBox(height: 20,),
                  Text('0', style: TextStyle(fontSize: 28, color: Colors.white),),
                ],
              )
            ],
          ),
        )
    );
  }

  Widget _gameGrid() {
    return Expanded(
      flex: 2,
      child: GridView.builder(
          itemCount: 9,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
          ),
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {
                _pressed(index);
              },
              child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade600)
                  ),
                  child: _gridList[index] == '' ?
                      Container(): _gridList[index] == 'x' ?
                  Icon(Icons.close, size: 50, color: Colors.redAccent,) :
                  Icon(Icons.circle_outlined, size: 50, color: Colors.teal,)
              ),
            );
          }
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
              child: Text( _turnO ? 'Turn of O' : 'Turn of X',
                style: TextStyle(color: Colors.white, fontSize: 24),),
            ),
          ),
          Visibility(
            visible: win,
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text( winner == 'o' ? 'Winner is O' : 'Winner is X',
                style: TextStyle(color: Colors.cyan, fontSize: 28, fontWeight: FontWeight.w600),),
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
      }
      else if (!_turnO && _gridList[index] == '') {
        _gridList[index] = 'x';
        _fillBoxes += 1;
        _turnO = !_turnO;
      }

      winner = checkWinner();
    });
  }

  String checkWinner() {
    if (_gridList[0] == _gridList[1] && _gridList[0] == _gridList[2] && _gridList[0] != '') {
      win = true;
      return _gridList[0];
      //print('Winner is ${_gridList[0]}');
    }
    else {
      return '';
    }
  }
}




