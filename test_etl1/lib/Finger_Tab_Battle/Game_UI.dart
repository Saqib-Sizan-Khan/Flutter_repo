import 'package:flutter/material.dart';

class Game_UI extends StatefulWidget {
  const Game_UI({Key? key}) : super(key: key);

  @override
  State<Game_UI> createState() => _Game_UIState();
}

class _Game_UIState extends State<Game_UI> {
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
                  red_tap += 1;
                  blue_tap -= 1;
                });
              },
              child: Container(
                width: double.maxFinite,
                height: double.maxFinite,
                color: Colors.redAccent,
              ),
            ),
          ),


          Expanded(
            flex: blue_tap,
            child: InkWell(
              onTap: () {
                setState(() {
                  red_tap -= 1;
                  blue_tap += 1;
                });
              },
              child: Container(
                width: double.maxFinite,
                height: double.maxFinite,
                color: Colors.blueAccent,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
