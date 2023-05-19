import 'package:flutter/material.dart';

class My_Slider extends StatelessWidget {
  const My_Slider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var arColor = [
      Colors.teal,
      Colors.amber,
      Colors.pink,
      Colors.lightBlue,
      Colors.purple,
      Colors.blueGrey,
      Colors.deepOrangeAccent
    ];
    var arText = [
      'Home',
      'Services',
      'Products',
      'About',
      'Career',
      'Apps',
      'Contact'
    ];

    var arImage = [
      Image.asset('assets/images/21.jpg'),
      Image.asset('assets/images/22.jpg'),
      Image.asset('assets/images/24.jpg'),
      Image.asset('assets/images/25.jpg'),
      Image.asset('assets/images/26.jpg'),
      Image.asset('assets/images/29.jpg'),
      Image.asset('assets/images/50.jpg')
    ];

    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Container(
              height: 150,
              margin: EdgeInsets.only(bottom: 30, top: 20),
              child: ListView.builder(
                  itemCount: arColor.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                          color: arColor[index],
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(blurRadius: 20, color: Colors.black)
                          ],
                          border:
                              Border.all(width: 3, color: Colors.cyanAccent)),
                      width: 150,
                      height: 150,
                      margin: EdgeInsets.all(10),
                      child: Center(
                        child: Text(arText[index],
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                      ),
                    );
                  }),
            ),
            Container(
              height: 150,
              margin: EdgeInsets.only(bottom: 30, top: 30),
              child: ListView.builder(
                  itemCount: arColor.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                          color: arColor[index],
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(blurRadius: 20, color: Colors.black)
                          ],
                          border:
                              Border.all(width: 3, color: Colors.cyanAccent)),
                      width: 150,
                      height: 150,
                      margin: EdgeInsets.all(10),
                      child: Center(
                        child: arImage[index]
                      ),
                    );
                  }),
            ),
            Container(
              height: 150,
              margin: EdgeInsets.only(bottom: 30, top: 30),
              child: ListView.builder(
                  itemCount: arColor.length,
                  scrollDirection: Axis.horizontal,
                  reverse: true,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                          color: arColor[index],
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(blurRadius: 20, color: Colors.black)
                          ],
                          border:
                              Border.all(width: 3, color: Colors.cyanAccent)),
                      width: 150,
                      height: 150,
                      margin: EdgeInsets.all(10),
                      child: Center(
                        child: Text(arText[index],
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                      ),
                    );
                  }),
            ),
          ],
        ));
  }
}
