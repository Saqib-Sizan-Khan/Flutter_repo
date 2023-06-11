import 'package:flutter/material.dart';
import 'package:test_etl1/Local_JSON_Data/data_utils.dart';

class JSON_UI extends StatelessWidget {
  JSON_UI({super.key});

  List <Map> album_data = Album_data.album_list;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Local JSON Data Call'),
      ),
      body: ListView.builder(
          itemCount: album_data.length,
          itemBuilder: (context, index) {
        return ListTile(
          leading: Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(album_data[index]['thumbnail']),
            ),
          ),
          title: Text(album_data[index]['title']),
          subtitle: Text('Price: \$${album_data[index]['price']}', style: TextStyle(color: Colors.blue, fontSize: 16),),
          trailing: Text(album_data[index]['brand']),
        );
      }),
    );
  }
}
