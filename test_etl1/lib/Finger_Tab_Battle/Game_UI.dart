import 'package:flutter/material.dart';

class Game_UI extends StatefulWidget {
  const Game_UI({Key? key}) : super(key: key);

  @override
  State<Game_UI> createState() => _Game_UIState();
}

class _Game_UIState extends State<Game_UI> {
  bool _isRed = false;
  bool _isBlue = false;
  int red_tap = 6;
  int blue_tap = 6;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: red_tap,
            child: InkWell(
              onTap: () {
                setState(() {
                  if (red_tap < 11 && !_isBlue && !_isRed) {
                    red_tap += 1;
                    blue_tap -= 1;
                  }
                  if (red_tap == 11) _isRed = true;
                });
              },
              child: Container(
                width: double.maxFinite,
                height: double.maxFinite,
                color: Colors.redAccent,
                child: win_btn('Red Wins', _isRed, Colors.red),
              ),
            ),
          ),
          Expanded(
            flex: blue_tap,
            child: InkWell(
              onTap: () {
                setState(() {
                  if (blue_tap < 11 && !_isBlue && !_isRed) {
                    red_tap -= 1;
                    blue_tap += 1;
                  }
                  if (blue_tap == 11) _isBlue = true;
                });
              },
              child: Container(
                width: double.maxFinite,
                height: double.maxFinite,
                color: Colors.blueAccent,
                child: win_btn('Blue Wins', _isBlue, Colors.blue),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget win_btn(String win_text, bool win_color, Color text_color) {
    return Visibility(
      visible: win_color,
      child: Center(
        child: SizedBox(
          height: 80,
          width: 200,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))),
            onPressed: () {
              setState(() {
                red_tap = 6;
                blue_tap = 6;
                _isRed = false;
                _isBlue = false;
              });
            },
            child: Text('$win_text\nPlay Again?',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                    color: text_color)),
          ),
        ),
      ),
    );
  }
}
