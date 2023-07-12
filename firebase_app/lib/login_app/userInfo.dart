import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  UserInfo({super.key});

  Stream<dynamic> showData(){
    return FirebaseFirestore.instance.collection("loginInfo").snapshots();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: StreamBuilder(
          stream: showData(),
          builder: (context, snapshot) => ListView.builder(
            itemCount: snapshot.data!.size ?? 0,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Text(snapshot.data.docs[index]['Username']),
                  Text(snapshot.data.docs[index]['Password']),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
