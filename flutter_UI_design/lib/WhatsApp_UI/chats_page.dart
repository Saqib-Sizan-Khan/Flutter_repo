import 'package:flutter/material.dart';
import 'contents.dart';

class Chats_Page extends StatelessWidget {
  const Chats_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var c = Contents();

    return Scaffold(
      body: Container(
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
                    Icon(
                      Icons.done_all,
                      color: Colors.blueAccent,
                      size: 18,
                    ),
                    Text(
                      'Hello I am ${c.arText[index]}',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                trailing: Text('21/05/2023'),
                leading: CircleAvatar(
                  radius: 22,
                  backgroundImage: c.arImage[index],
                ),
              );
            }),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.message),
      ),
    );
  }
}
