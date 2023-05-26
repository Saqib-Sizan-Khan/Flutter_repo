import 'package:flutter/material.dart';

class Messenger_Chats_UI extends StatelessWidget {
  const Messenger_Chats_UI({Key? key}) : super(key: key);

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

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          'Chats',
          style: TextStyle(color: Colors.black, fontSize: 30),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: CircleAvatar(
            child: Icon(
              Icons.menu,
              color: Colors.black,
            ),
            radius: 20,
            backgroundColor: Colors.black26,
          ),
        ),
        actions: [
          CircleAvatar(
            child: Icon(
              Icons.add_a_photo_rounded,
              color: Colors.black,
            ),
            radius: 20,
            backgroundColor: Colors.black26,
          ),
          SizedBox(
            width: 15,
          ),
          CircleAvatar(
            child: Icon(
              Icons.edit_sharp,
              color: Colors.black,
            ),
            radius: 20,
            backgroundColor: Colors.black26,
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: Column(
        children: [
          //Search Box
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
              style: TextStyle(fontSize: 18),
              decoration: InputDecoration(
                  hintText: 'Search Friend',
                  hintStyle: TextStyle(fontSize: 18),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  filled: true,
                  fillColor: Colors.grey[400],
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  )),
            ),
          ),

          SizedBox(height: 15),

          //Active List
          Container(
            width: 500,
            height: 110,
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
                              Text(
                                arText[index],
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w700),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),

          //Chats List
          Container(
            height: 630,
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
