import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_app/To_Do_app/task_box.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ToDoApp extends StatelessWidget {
  ToDoApp({super.key});

  TextEditingController todoController = TextEditingController();
  TextEditingController taskDesController = TextEditingController();
  var currentDate = DateFormat.yMMMEd().format(DateTime.now());
  DateTime? pickedDate;

  Stream<dynamic> showData() {
    return FirebaseFirestore.instance.collection("TodoList").orderBy('due',).snapshots();
  }

  Future<void> updateTodo(String id, bool done) async {
    var todo = FirebaseFirestore.instance.collection('TodoList').doc(id);

    done ? todo.update({'done': false}) : todo.update({'done': true});
  }

  Future<void> removeTodo(String id) async {
    await FirebaseFirestore.instance.collection('TodoList').doc(id).delete();
  }

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
                                          backgroundColor: Theme.of(context)
                                              .dialogBackgroundColor,
                                          title: Text(
                                            'Task Description',
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleLarge,
                                          ),
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
                                var snackBar = SnackBar(
                                  content: Text(
                                    'Please add a Task Name',
                                    textAlign: TextAlign.center,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium,
                                  ),
                                  padding: const EdgeInsets.all(24),
                                  backgroundColor:
                                      Theme.of(context).dialogBackgroundColor,
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
                    enabledBorder:
                        Theme.of(context).inputDecorationTheme.enabledBorder,
                    focusedBorder:
                        Theme.of(context).inputDecorationTheme.focusedBorder),
              ),
            ),
            Divider(
              height: 20,
              color: Colors.grey[700],
            ),
            const SizedBox(height: 10),
            const ListHeading(headingText: 'TO DO'),
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
                      itemBuilder: (context, index) {
                        return !snapshot.data.docs[index]['done']
                            ? TaskBox(
                                child: ExpansionTile(
                                  tilePadding: const EdgeInsets.all(15),
                                  title: Text(
                                      snapshot.data.docs[index]['title'],
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall),
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
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall),
                                  children: [
                                    TaskBox(
                                        child: ListTile(
                                      title: SelectableText(
                                          snapshot.data.docs[index]['subtitle'],
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleMedium),
                                    ))
                                  ],
                                ),
                              )
                            : Container();
                      }),
            ),
            const SizedBox(height: 20),
            const ListHeading(headingText: 'COMPLETED'),
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
                            ? TaskBox(
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
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelSmall),
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
