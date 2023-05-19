import 'package:flutter/material.dart';

class DemoUI extends StatelessWidget {
  const DemoUI({Key? key}) : super(key: key);

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

    var arColor = [
      Colors.teal,
      Colors.amber,
      Colors.pink,
      Colors.lightBlue,
      Colors.purple,
      Colors.blueGrey,
      Colors.deepOrangeAccent
    ];

    return Scaffold(
      body: Column(
        children: [
          SingleChildScrollView(scrollDirection: Axis.vertical,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(
                  child: Icon(
                    Icons.menu,
                    color: Colors.black,
                  ),
                  radius: 20,
                  backgroundColor: Colors.black26,
                ),
                SizedBox(width: 10,),
                Text('Chats', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                SizedBox(width: 300,),
                CircleAvatar(
                  child: Icon(
                    Icons.add_a_photo_rounded,
                    color: Colors.black,
                  ),
                  radius: 20,
                  backgroundColor: Colors.black26,
                ),
                SizedBox(width: 10,),
                CircleAvatar(
                  child: Icon(
                    Icons.edit_sharp,
                    color: Colors.black,
                  ),
                  radius: 20,
                  backgroundColor: Colors.black26,
                ),

              ],
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(30)),
              height: 50,
              width: 480,
              child: Row(
                children: [
                  Icon(Icons.search),
                  SizedBox(
                    width: 10,
                  ),
                  Text('Search Friend'),
                  SizedBox(
                    width: 300,
                  ),
                  Icon(Icons.delete)
                ],
              ),
            ),
          ),
          Container(
            width: 500,
            height: 100,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: arText.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.black,
                                backgroundImage: arImage[index],
                                radius: 25,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(arText[index])
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
          Container(
            height: 500,
            child: ListView.builder(
                itemCount: arText.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.black,
                            backgroundImage: arImage[index],
                            radius: 25,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                arText[index],
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Hello World',
                                style: TextStyle(fontSize: 13),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
