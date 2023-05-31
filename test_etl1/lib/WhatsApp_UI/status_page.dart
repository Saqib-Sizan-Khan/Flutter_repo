import 'package:flutter/material.dart';
import 'contents.dart';

class Status_Page extends StatelessWidget {
  const Status_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var c = Contents();

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              padding: EdgeInsets.only(top: 10),
              width: 400,
              height: 70,
              child: ListTile(
                title: Text(
                  'My Status',
                  style: TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  'Tap to add status update',
                  style: TextStyle(fontSize: 14),
                ),
                leading: Stack(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/53.jpg'),
                      radius: 25,
                    ),
                    Positioned(
                      bottom: 1,
                      right: 1,
                      child: CircleAvatar(
                        backgroundColor: Colors.teal,
                        radius: 10,
                        child: Icon(
                          Icons.add,
                          size: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              )),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text('Recent updates', style: TextStyle(fontSize: 14)),
          ),
          Container(
            width: 400,
            height: 690,
            child: ListView.builder(
                itemCount: c.arText.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      c.arText[index],
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
                        backgroundImage: c.arImage[index],
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.teal,
        child: Icon(Icons.camera_alt_rounded),
      ),
    );
  }
}
