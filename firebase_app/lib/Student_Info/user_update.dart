import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_app/Student_Info/info_field.dart';
import 'package:firebase_app/Student_Info/information.dart';
import 'package:flutter/material.dart';

class UpdateInfo extends StatelessWidget {
  UpdateInfo({super.key, required this.userid});

  var userid;

  TextEditingController nameController = TextEditingController();
  TextEditingController insController = TextEditingController();
  TextEditingController idController = TextEditingController();
  TextEditingController deptController = TextEditingController();
  TextEditingController secController = TextEditingController();
  TextEditingController semController = TextEditingController();

  Future<void> updateData(String id) async {
    await FirebaseFirestore.instance.collection('StudentInfo').doc(id).update({
      'Name': nameController.text,
      'Institute name': insController.text,
      'Student id': idController.text,
      'Department': deptController.text,
      'Section': secController.text,
      'Semester': semController.text
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.tertiaryContainer,
        title: const Text('User Info Update',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            InfoField(fieldName: 'Name', textEditingController: nameController),
            InfoField(
                fieldName: 'Institute Name', textEditingController: insController),
            InfoField(
                fieldName: 'Student ID', textEditingController: idController),
            InfoField(
                fieldName: 'Department', textEditingController: deptController),
            InfoField(
                fieldName: 'Section', textEditingController: secController),
            InfoField(
                fieldName: 'Semester', textEditingController: semController),

            SizedBox(
              height: 60,
              width: 200,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).colorScheme.tertiaryContainer,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                          side: BorderSide(
                              width: 3,
                              color: Theme.of(context).colorScheme.primary))),
                  onPressed: () {
                    updateData(userid);
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Update Info',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
