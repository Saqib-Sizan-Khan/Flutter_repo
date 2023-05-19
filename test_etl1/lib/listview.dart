import 'package:flutter/material.dart';

class HomePage3 extends StatelessWidget {
  const HomePage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var arColor=[Colors.indigo, Colors.purple, Colors.yellow, Colors.deepOrange, Colors.cyanAccent];
    var arColor2=[Colors.cyanAccent, Colors.deepOrange, Colors.amber, Colors.purple, Colors.indigo];

    return Scaffold(
      appBar: AppBar(),
      body: Row(
        children: [
          Container(
            width: 250,
            child: ListView.builder(
                // scrollDirection: Axis.horizontal,
                itemCount: arColor.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Card(
                      elevation: 50,
                      color: arColor[index],
                      child: Center(
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Image.network('https://images.pexels.com/photos/268533/pexels-photo-268533.jpeg?cs=srgb&dl=pexels-pixabay-268533.jpg&fm=jpg'),
                          )),
                    ),
                  );
                }),
          ),
          Container(
            width: 250,
            child: ListView.builder(
                //scrollDirection: Axis.horizontal,
                itemCount: arColor2.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Card(
                      elevation: 50,
                      color: arColor2[index],
                      child: Center(
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Image.asset('assets/images/50.jpg'),
                          )),
                    ),
                  );
                }),
          )
        ],
      )
    );
  }
}