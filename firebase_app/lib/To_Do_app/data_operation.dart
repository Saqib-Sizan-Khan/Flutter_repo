import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_app/To_Do_app/to_do_app_theme.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DataOps {
  static TextEditingController todoController = TextEditingController();
  static TextEditingController taskDesController = TextEditingController();
  static dynamic currentDate = DateFormat.yMMMEd().format(DateTime.now());
  static DateTime? pickedDate;

  static void addTodos() {
    FirebaseFirestore.instance.collection('TodoList').add({
      'done': false,
      'title': todoController.text,
      'subtitle': taskDesController.text,
      'due': pickedDate
    });
  }

  static Stream<dynamic> showTodos() {
    return FirebaseFirestore.instance
        .collection("TodoList")
        .orderBy('due')
        .snapshots();
  }

  static Future<void> updateTodo(String id, bool done) async {
    var todo = FirebaseFirestore.instance.collection('TodoList').doc(id);

    done ? todo.update({'done': false}) : todo.update({'done': true});
  }

  static Future<void> removeTodo(String id) async {
    await FirebaseFirestore.instance.collection('TodoList').doc(id).delete();
  }

  static todoDatePicker(BuildContext context) async {
    pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2023),
        lastDate: DateTime(2024));
  }

  static void fieldClear() {
    todoController.clear();
    taskDesController.clear();
    pickedDate = null;
  }

  static void todoSnackBar(BuildContext context) {
    var snackBar = SnackBar(
      content: Text('Please add a Task Name',
          textAlign: TextAlign.center, style: ts(context).headlineMedium),
      padding: const EdgeInsets.all(24),
      backgroundColor: Theme.of(context).dialogBackgroundColor,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
