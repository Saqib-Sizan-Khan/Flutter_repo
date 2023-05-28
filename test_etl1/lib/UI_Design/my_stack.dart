import 'package:flutter/material.dart';

class MyStack extends StatelessWidget {
  const MyStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          Container(
            height: 300,
            width: 300,
            color: Colors.blueGrey,
          ),
          Container(
            height: 200,
            width: 200,
            color: Colors.blue,
          ),
          Positioned(
            bottom: 0,
            right: 100,
            child: Container(
              height: 100,
              width: 100,
              color: Colors.cyanAccent,
            ),
          ),
          Positioned(
            bottom: 100,
            right: 0,
            child: Container(
              height: 100,
              width: 100,
              color: Colors.cyanAccent,
            ),
          ),
        ],
      ),
    );
  }
}
