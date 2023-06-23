import 'package:flutter/material.dart';
import '../model/user_model.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<List<UserModel>> fetchUser() async {
  final response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

  if (response.statusCode == 200) {
    final List<dynamic> jsonResponse = json.decode(response.body);
    List<UserModel> users =
        jsonResponse.map((data) => UserModel.fromJson(data)).toList();
    return users;
  } else {
    throw Exception('Failed to fetch Data');
  }
}

class User_UI extends StatelessWidget {
  const User_UI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('User Details')),
      body: FutureBuilder<List<UserModel>>(
        future: fetchUser(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            List<UserModel> users = snapshot.data ?? [];

            return ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        users[index].name,
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w700),
                      ),
                      Text(
                        'Username: ${users[index].username}',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'Email: ${users[index].email}',
                        style: TextStyle(
                            fontSize: 22,
                            color: Colors.teal,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'ID: ${users[index].id}',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFFCD9B04)),
                      )
                    ],
                  ),
                );
                ;
              },
            );
          }
        },
      ),
    );
  }
}
