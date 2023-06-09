import 'package:flutter/material.dart';

class Messenger_Stories_UI extends StatelessWidget {
  const Messenger_Stories_UI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var arText = [
      'Sizan',
      'Saqib',
      'Aqib',
      'Jishan',
      'Ayman',
      'Ashraful',
      'Sharif',
      'Sabbir',
      'Shafin',
      'Rifat',
    ];

    var arImage = [
      AssetImage('assets/images/21.jpg'),
      AssetImage('assets/images/22.jpg'),
      AssetImage('assets/images/24.jpg'),
      AssetImage('assets/images/25.jpg'),
      AssetImage('assets/images/26.jpg'),
      AssetImage('assets/images/29.jpg'),
      AssetImage('assets/images/50.jpg'),
      AssetImage('assets/images/51.jpg'),
      AssetImage('assets/images/52.jpg'),
      AssetImage('assets/images/53.jpg'),
    ];

    var arImageRev = [
      AssetImage('assets/images/53.jpg'),
      AssetImage('assets/images/52.jpg'),
      AssetImage('assets/images/51.jpg'),
      AssetImage('assets/images/50.jpg'),
      AssetImage('assets/images/29.jpg'),
      AssetImage('assets/images/26.jpg'),
      AssetImage('assets/images/25.jpg'),
      AssetImage('assets/images/24.jpg'),
      AssetImage('assets/images/22.jpg'),
      AssetImage('assets/images/21.jpg'),
    ];

    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Text('Stories', style: TextStyle(fontSize: 30, color: Colors.black),),
          leading: Padding(
            padding: const EdgeInsets.only(left: 15),
            child: CircleAvatar(
              child: Icon(
                Icons.menu,
                color: Colors.black,
              ),
              radius: 20,
              backgroundColor: Colors.grey[400],
            ),
          ),
        ),
        body: GridView.builder(
            itemCount: arText.length,
            padding: EdgeInsets.all(8),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              childAspectRatio: 3 / 4,
              mainAxisSpacing: 10,
            ),
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: arImage[index], fit: BoxFit.cover),
                        color: Colors.purple,
                        borderRadius: BorderRadius.circular(10)),
                    width: 200,
                    height: 250,
                  ),
                  Positioned(
                    top: 12,
                    left: 8,
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.indigo,
                      child: CircleAvatar(
                        backgroundImage: arImageRev[index],
                        radius: 20,
                        backgroundColor: Colors.black26,
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: 15,
                      left: 10,
                      child: Text(
                        arText[index],
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ))
                ],
              );
            }));
  }
}
