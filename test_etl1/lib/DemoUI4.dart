import 'package:flutter/material.dart';

class DemoUI4 extends StatelessWidget {
  const DemoUI4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var arImage = [
      AssetImage('assets/images/29.jpg'),
      AssetImage('assets/images/50.jpg'),
    ];

    return Scaffold(
      backgroundColor: Color(0xff513CBD),
      appBar: AppBar(
        toolbarHeight: 150,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.more_vert),
        actions: [
          CircleAvatar(
            radius: 25,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 22,
              backgroundImage: AssetImage('assets/images/25.jpg'),
            ),
          ),
          SizedBox(
            width: 40,
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              'Hi Sizan',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              '6 Tasks are pending',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 25, top: 30),
            height: 150,
            width: 350,
            decoration: BoxDecoration(
                color: Color(0xff5250D5),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [BoxShadow(blurRadius: 5)]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10),
                  child: Text(
                    'Mobile App Design',
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Saqib and Sizan',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 23, top: 20),
                  child: Row(
                    children: [
                      for (int i = 0; i < arImage.length; i++)
                        Align(
                          widthFactor: 0.7,
                          child: CircleAvatar(
                            radius: 23,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: 20,
                              backgroundImage: arImage[i],
                            ),
                          ),
                        ),
                      SizedBox(width: 200,),
                      Text('Now', style: TextStyle(fontSize: 16, color: Colors.white),)
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
