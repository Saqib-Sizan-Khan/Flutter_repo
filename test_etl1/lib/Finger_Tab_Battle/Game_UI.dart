import 'package:flutter/material.dart';

class Game_UI extends StatefulWidget {
  const Game_UI({Key? key}) : super(key: key);

  @override
  State<Game_UI> createState() => _Game_UIState();
}

class _Game_UIState extends State<Game_UI> {
  int red_tap = 6;
  int blue_tap = 6;
  bool _isRed = false;
  bool _isBlue = false;

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
                child: Visibility(
                    visible: _isRed,
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
                            });
                          },
                          child: Text("Red Wins",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.red)),
                        ),
                      ),
                    )),
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
                child: Visibility(
                    visible: _isBlue,
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
                              _isBlue = false;
                            });
                          },
                          child: Text("Blue Wins",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.blue)),
                        ),
                      ),
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
