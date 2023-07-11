import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_app/Student_Info/user_update.dart';
import 'package:flutter/material.dart';

class Information extends StatelessWidget {
  Information({super.key});

  Stream<dynamic> showData() {
    return FirebaseFirestore.instance.collection("StudentInfo").snapshots();
  }

  Future<void> removeData(String id) async {
    await FirebaseFirestore.instance.collection('StudentInfo').doc(id).delete();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.tertiaryContainer,
          title: Text('Student Information',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          centerTitle: true,
        ),
        body: StreamBuilder(
          stream: showData(),
          builder: (context, snapshot) => snapshot.connectionState ==
                  ConnectionState.waiting
              ? Center(child: CircularProgressIndicator())
              : GridView.builder(
                  itemCount: snapshot.data!.size ?? 0,
                  padding: EdgeInsets.all(8),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 0.6),
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.tertiary,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 35,
                            backgroundColor: Colors.white,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(snapshot.data.docs[index]['Name'],
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                          Text(snapshot.data.docs[index]['Institute name'],
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white)),
                          Text(snapshot.data.docs[index]['Student id'],
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white)),
                          Text(snapshot.data.docs[index]['Department'],
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white)),
                          Text(
                              'Section: ${snapshot.data.docs[index]['Section']}',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white)),
                          Text(
                              'Semester: ${snapshot.data.docs[index]['Semester']}',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white)),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                  onPressed: () {
                                    removeData(snapshot.data.docs[index].id);
                                  },
                                  icon: Icon(Icons.delete,
                                      size: 30, color: Colors.redAccent)),
                              IconButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => UpdateInfo(
                                                userid: snapshot
                                                    .data.docs[index].id)));
                                  },
                                  icon: Icon(Icons.edit,
                                      size: 30, color: Colors.cyanAccent))
                            ],
                          )
                        ],
                      ),
                    );
                  }),
        ));
  }
}
