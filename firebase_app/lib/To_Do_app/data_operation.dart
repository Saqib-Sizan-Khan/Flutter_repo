import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class DataOps {
  static void addTodos(DateTime dateTime, String title, String subtitle) {
    FirebaseFirestore.instance.collection('TodoList').add(
        {'done': false, 'title': title, 'subtitle': subtitle, 'due': dateTime});
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
}
