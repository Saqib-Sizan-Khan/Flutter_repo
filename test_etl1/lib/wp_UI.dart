import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WP_UI extends StatelessWidget {
  WP_UI({Key? key}) : super(key: key);

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
    'Mehrab',
    'Imran',
    'Zahir',
    'Abdullah'
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
    AssetImage('assets/images/21.jpg'),
    AssetImage('assets/images/22.jpg'),
    AssetImage('assets/images/24.jpg'),
    AssetImage('assets/images/25.jpg'),
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

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('WhatsApp'),
          actions: [
            Icon(Icons.camera_alt_outlined),
            SizedBox(
              width: 15,
            ),
            Icon(Icons.search),
            SizedBox(
              width: 15,
            ),
            Icon(Icons.more_vert),
            SizedBox(
              width: 10,
            ),
          ],
          backgroundColor: Colors.teal,
          bottom: TabBar(
            indicatorWeight: 4,
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                icon: Icon(Icons.people),
              ),
              Tab(text: 'Chats'),
              Tab(text: 'Status'),
              Tab(text: 'Calls'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Text('Community'),
            ),
            Container(
              child: ListView.builder(
                  itemCount: arText.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(
                        arText[index],
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Row(
                        children: [
                          Icon(
                            Icons.done_all,
                            color: Colors.blueAccent,
                            size: 18,
                          ),
                          Text(
                            'Hello I am ${arText[index]}',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      trailing: Text('21/05/2023'),
                      leading: CircleAvatar(
                        radius: 22,
                        backgroundImage: arImage[index],
                      ),
                    );
                  }),
            ),
            Container(
              child: ListView.builder(itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    arText[index],
                    style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Row(
                    children: [
                      Text(
                        'Yesterday, 9:19 am',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.green,
                    child: CircleAvatar(
                      radius: 20,
                      backgroundImage: arImage[index],
                    ),
                  ),
                );
              }),
            ),
            Container(
              child: ListView.builder(
                  itemCount: arText.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(
                        arText[index],
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Row(
                        children: [
                          Icon(
                            Icons.call_received_rounded,
                            color: Colors.green,
                            size: 16,
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Text(
                            'Yesterday, 12:10 am',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      trailing: Icon(
                        Icons.call,
                        color: Colors.teal,
                      ),
                      leading: CircleAvatar(
                        radius: 22,
                        backgroundImage: arImage[index],
                      ),
                    );
                  }),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.teal,
          child: Icon(Icons.message),
        ),
      ),
    );
  }
}
