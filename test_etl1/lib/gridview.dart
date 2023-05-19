import 'package:flutter/material.dart';

class My_GridView extends StatelessWidget {
  My_GridView({Key? key}) : super(key: key);

  var arColor = [
    Colors.teal,
    Colors.amber,
    Colors.pink,
    Colors.lightBlue,
    Colors.purple,
    Colors.blueGrey,
    Colors.deepOrangeAccent
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: GridView.builder(
          itemCount: arColor.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            childAspectRatio: 5/4,
            mainAxisSpacing: 10,
          ),
          padding: EdgeInsets.all(10),
          itemBuilder: (context, index) {
            return Container(
              color: arColor[index],
            );
          },
        ));
  }
}
