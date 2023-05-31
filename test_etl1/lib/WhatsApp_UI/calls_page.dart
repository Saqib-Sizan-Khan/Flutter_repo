import 'package:flutter/material.dart';
import 'contents.dart';

class Calls_Page extends StatelessWidget {
  const Calls_Page({Key? key}) : super(key: key);

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
                  backgroundImage: c.arImage[index],
                ),
              );
            }),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.teal,
        child: Icon(Icons.add_call),
      ),
    );
  }
}
