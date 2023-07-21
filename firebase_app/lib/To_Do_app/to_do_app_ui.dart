import 'package:firebase_app/To_Do_app/custom_widgets.dart';
import 'package:firebase_app/To_Do_app/data_operation.dart';
import 'package:firebase_app/To_Do_app/to_do_app_theme.dart';
import 'package:flutter/material.dart';

class ToDoApp extends StatelessWidget {
  const ToDoApp({super.key});

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
                controller: DataOps.todoController,
                style: ts(context).headlineMedium,
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
                              if (DataOps.todoController.text != '') {
                                await showDialog(
                                    context: context,
                                    builder: (context) => AlertDialog(
                                          backgroundColor: Theme.of(context)
                                              .dialogBackgroundColor,
                                          title: Text('Task Description',
                                              style: ts(context).titleLarge),
                                          content: TextField(
                                            decoration: const InputDecoration(
                                              hintText: 'Add Description',
                                            ),
                                            controller:
                                                DataOps.taskDesController,
                                          ),
                                          actions: [
                                            ElevatedButton(
                                                onPressed: () async {
                                                  await DataOps.todoDatePicker(
                                                      context);
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

                                if (DataOps.pickedDate != null) {
                                  DataOps.addTodos();
                                }
                                DataOps.fieldClear();
                              } else {
                                DataOps.todoSnackBar(context);
                              }
                            },
                            icon: const Icon(Icons.add, color: Colors.white)),
                      ),
                    ),
                    hintText: 'Add Task',
                    hintStyle: ts(context).labelMedium,
                    enabledBorder:
                        Theme.of(context).inputDecorationTheme.enabledBorder,
                    focusedBorder:
                        Theme.of(context).inputDecorationTheme.focusedBorder),
              ),
            ),
            Divider(height: 20, color: Colors.grey[700]),
            const SizedBox(height: 10),
            const ListHeading(headingText: 'TO DO'),
            const SizedBox(height: 10),
            StreamBuilder(
              stream: DataOps.showTodos(),
              builder: (context, snapshot) =>
                  snapshot.connectionState == ConnectionState.waiting
                      ? const Center(child: CircularProgressIndicator())
                      : ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: snapshot.data!.size ?? 0,
                          itemBuilder: (context, index) {
                            var taskDone = snapshot.data.docs[index]['done'];
                            var taskName = snapshot.data.docs[index]['title'];
                            var taskDes = snapshot.data.docs[index]['subtitle'];
                            var taskDue =
                                snapshot.data.docs[index]['due'].toDate();
                            var taskID = snapshot.data.docs[index].id;
                            return !taskDone
                                ? TaskBox(
                                    child: TodoList(
                                        taskDone: taskDone,
                                        taskName: taskName,
                                        taskDes: taskDes,
                                        taskDue: taskDue,
                                        taskID: taskID),
                                  )
                                : Container();
                          }),
            ),
            const SizedBox(height: 20),
            const ListHeading(headingText: 'COMPLETED'),
            const SizedBox(height: 10),
            StreamBuilder(
                stream: DataOps.showTodos(),
                builder: (context, snapshot) =>
                    snapshot.connectionState == ConnectionState.waiting
                        ? const Center(child: CircularProgressIndicator())
                        : ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: snapshot.data!.size ?? 0,
                            itemBuilder: (context, index) {
                              var taskDone = snapshot.data.docs[index]['done'];
                              var taskName = snapshot.data.docs[index]['title'];
                              var taskID = snapshot.data.docs[index].id;
                              return taskDone
                                  ? TaskBox(
                                      child: CompletedList(
                                          taskDone: taskDone,
                                          taskName: taskName,
                                          taskID: taskID),
                                    )
                                  : Container();
                            }))
          ],
        ),
      ),
    );
  }
}
