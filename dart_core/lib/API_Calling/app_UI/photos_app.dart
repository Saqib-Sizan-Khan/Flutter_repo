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

            return GridView.builder(
                itemCount: photos.length,
                padding: EdgeInsets.all(8),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  childAspectRatio: 0.6,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(photos[index].url),
                                fit: BoxFit.cover),
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      Text('ID: ${photos[index].id}',
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFFCD9B04))),
                      Text(
                        photos[index].title,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ],
                  );
                });
          }
        },
      ),
    );
  }
}
