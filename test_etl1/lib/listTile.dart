import 'package:flutter/material.dart';

class My_ListTile extends StatelessWidget {
  const My_ListTile({Key? key}) : super(key: key);

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

    return Scaffold(
        appBar: AppBar(),
        body: ListView.builder(
            // scrollDirection: Axis.horizontal,
            itemCount: arColor.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10, top: 10),
                child: Card(
                  elevation: 50,
                  color: arColor[index],
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: ListTile(
                  title: Text('Sizan'),
                  subtitle: Text('Flutter Developer'),
                  leading: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 30,
                    child: Text(
                      (index + 1).toString(),
                      style: TextStyle(
                          fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                  trailing: Icon(Icons.menu),
                    ),
                  ),
                ),
              );
            })
    );
  }
}
