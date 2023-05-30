import 'package:flutter/material.dart';

class Sports_League_UI extends StatelessWidget {
  const Sports_League_UI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.white,
            ),
          ),
          Expanded(
              flex: 1,
              child: Container(
                color: Colors.black,
              ))
        ],
      ),
    );
  }
}
