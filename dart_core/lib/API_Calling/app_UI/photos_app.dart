import 'package:flutter/material.dart';
import '../model/photo_model.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<List<PhotoModel>> fetchPhoto() async {
  final response =
  await http.get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));

  if (response.statusCode == 200) {
    final List<dynamic> jsonResponse = json.decode(response.body);
    List<PhotoModel> photos =
    jsonResponse.map((data) => PhotoModel.fromJson(data)).toList();
    return photos;
  } else {
    throw Exception('Failed to fetch Data');
  }
}

class Photo_UI extends StatelessWidget {
  const Photo_UI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Photos Info')),

      body: FutureBuilder<List<PhotoModel>>(
        future: fetchPhoto(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            List<PhotoModel> photos = snapshot.data ?? [];

            return ListView.builder(
              itemCount: photos.length,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 220,
                        width: 380,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(photos[index].url), fit: BoxFit.cover
                            ),
                            borderRadius: BorderRadius.circular(20)
                        ),
                      ),
                      SizedBox(height: 10,),

                      Text(photos[index].title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),),
                      Text('ID: ${photos[index].id}', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500, color: Color(0xFFCD9B04)),)

                    ],
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
