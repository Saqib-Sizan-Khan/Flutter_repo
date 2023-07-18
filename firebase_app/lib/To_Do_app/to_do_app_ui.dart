import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_app/To_Do_app/task_box.dart';
import 'package:firebase_app/To_Do_app/to_do_app_theme.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class To_Do_App extends StatelessWidget {
  To_Do_App({super.key});

  TextEditingController todoController = TextEditingController();
  TextEditingController taskDesController = TextEditingController();

  Stream<dynamic> showData() {
    return FirebaseFirestore.instance.collection("TodoList").snapshots();
  }

  Future<void> updateTodo(String id, bool done) async {
    var todo = FirebaseFirestore.instance.collection('TodoList').doc(id);

    done ? todo.update({'done': false}) : todo.update({'done': true});
  }

  Future<void> removeTodo(String id) async {
    await FirebaseFirestore.instance.collection('TodoList').doc(id).delete();
  }

  var currentDate = DateFormat.yMMMEd().format(DateTime.now());
  DateTime? pickedDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: todoController,
                style: Theme.of(context).textTheme.headlineMedium,
                decoration: InputDecoration(
                  fillColor: Theme.of(context).inputDecorationTheme.fillColor,
                  filled: true,
                  prefix: const SizedBox(width: 10),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.indigoAccent,
                      child: IconButton(
                          onPressed: () async {
                            if (todoController.text != '') {
                              await showDialog(
                                  context: context,
                                  builder: (context) => AlertDialog(
                                        backgroundColor: Colors.blue[100],
                                        title: const Text('Task Description'),
                                        content: TextField(
                                          decoration: const InputDecoration(
                                            hintText: 'Add Description',
                                          ),
                                          controller: taskDesController,
                                        ),
                                        actions: [
                                          ElevatedButton(
                                              onPressed: () async {
                                                pickedDate =
                                                    await showDatePicker(
                                                        context: context,
                                                        initialDate:
                                                            DateTime.now(),
                                                        firstDate:
                                                            DateTime(2023),
                                                        lastDate:
                                                            DateTime(2024));
                                                Navigator.of(context).pop();
                                              },
                                              child: const Text(
                                                'Submit',
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.indigo),
                                              )),
                                          ElevatedButton(
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                              child: const Text(
                                                'Cancel',
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.redAccent),
                                              ))
                                        ],
                                      ));

                              if (pickedDate != null) {
                                FirebaseFirestore.instance
                                    .collection('TodoList')
                                    .add({
                                  'done': false,
                                  'title': todoController.text,
                                  'subtitle': taskDesController.text,
                                  'due': pickedDate
                                });
                              }

                              todoController.clear();
                              taskDesController.clear();
                              pickedDate = null;
                            } else {
                              var snackBar = const SnackBar(
                                content: Text(
                                  'Please add a Task Name',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 20),
                                ),
                                padding: EdgeInsets.all(24),
                                backgroundColor: Colors.indigoAccent,
                              );
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackBar);
                            }
                          },
                          icon: const Icon(Icons.add, color: Colors.white)),
                    ),
                  ),
                  hintText: 'Add Task',
                  hintStyle: Theme.of(context).textTheme.labelMedium,
                  enabledBorder: Theme.of(context).inputDecorationTheme.enabledBorder,
                  focusedBorder: Theme.of(context).inputDecorationTheme.focusedBorder
                ),
              ),
            ),
            Divider(
              height: 20,
              color: Colors.grey[700],
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32),
              child: Text(
                'TO DO',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
            const SizedBox(height: 10),
            StreamBuilder(
              stream: showData(),
              builder: (context, snapshot) => snapshot.connectionState ==
                      ConnectionState.waiting
                  ? const Center(child: CircularProgressIndicator())
                  : ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: snapshot.data!.size ?? 0,
                      itemBuilder: (context, index) {
                        return !snapshot.data.docs[index]['done']
                            ? Task_Box(
                                child: ExpansionTile(
                                  tilePadding: const EdgeInsets.all(15),
                                  title: Text(
                                      snapshot.data.docs[index]['title'],
                                      style: Theme.of(context).textTheme.titleSmall),
                                  leading: InkWell(
                                    onTap: () {
                                      bool done =
                                          snapshot.data.docs[index]['done'];
                                      String id = snapshot.data.docs[index].id;
                                      updateTodo(id, done);
                                    },
                                    child: const CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: 12,
                                    ),
                                  ),
                                  trailing: Text(
                                      DateFormat.yMMMEd().format(snapshot
                                                  .data.docs[index]['due']
                                                  .toDate()) ==
                                              currentDate
                                          ? 'Due Today'
                                          : DateFormat.yMMMEd().format(snapshot
                                              .data.docs[index]['due']
                                              .toDate()),
                                      style: Theme.of(context).textTheme.bodySmall),
                                  children: [
                                    Task_Box(
                                        child: ListTile(
                                      title: Text(
                                          snapshot.data.docs[index]['subtitle'],
                                          style: Theme.of(context).textTheme.titleMedium),
                                    ))
                                  ],
                                ),
                              )
                            : Container();
                      },
                      separatorBuilder: (context, index) => Container()),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 32),
              child: Text(
                'COMPLETED',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
            const SizedBox(height: 10),
            StreamBuilder(
                stream: showData(),
                builder: (context, snapshot) => snapshot.connectionState ==
                        ConnectionState.waiting
                    ? const Center(child: CircularProgressIndicator())
                    : ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: snapshot.data!.size ?? 0,
                        itemBuilder: (context, index) => snapshot
                                .data.docs[index]['done']
                            ? Task_Box(
                                child: ListTile(
                                    contentPadding: const EdgeInsets.all(15),
                                    leading: InkWell(
                                      onTap: () {
                                        bool done =
                                            snapshot.data.docs[index]['done'];
                                        String id =
                                            snapshot.data.docs[index].id;
                                        updateTodo(id, done);
                                      },
                                      child: CircleAvatar(
                                        backgroundColor:
                                            Colors.greenAccent[100],
                                        radius: 12,
                                        child: const Icon(
                                          Icons.check,
                                          color: Colors.teal,
                                        ),
                                      ),
                                    ),
                                    title: Text(
                                        snapshot.data.docs[index]['title'],
                                        style: Theme.of(context).textTheme.labelSmall),
                                    trailing: IconButton(
                                        onPressed: () => removeTodo(
                                            snapshot.data.docs[index].id),
                                        icon: const Icon(Icons.delete,
                                            color: Colors.red, size: 28))),
                              )
                            : Container()))
          ],
        ),
      ),
    );
  }
}
