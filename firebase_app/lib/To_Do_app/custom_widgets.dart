import 'package:firebase_app/To_Do_app/data_operation.dart';
import 'package:firebase_app/To_Do_app/to_do_app_theme.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TaskBox extends StatelessWidget {
  const TaskBox({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(15)),
        child: child);
  }
}

class ListHeading extends StatelessWidget {
  const ListHeading({super.key, required this.headingText});

  final String headingText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 32),
      child: Text(
        headingText,
        style: Theme.of(context).textTheme.headlineSmall,
      ),
    );
  }
}

class TodoList extends StatelessWidget {
  const TodoList(
      {super.key,
      required this.taskDone,
      required this.taskName,
      required this.taskDes,
      required this.taskDue,
      required this.taskID});

  final taskDone;
  final taskName;
  final taskDes;
  final taskDue;
  final taskID;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      tilePadding: const EdgeInsets.all(15),
      title: Text(taskName, style: ts(context).titleSmall),
      leading: InkWell(
        onTap: () {
          bool done = taskDone;
          String id = taskID;
          DataOps.updateTodo(id, done);
        },
        child: const CircleAvatar(
          backgroundColor: Colors.white,
          radius: 12,
        ),
      ),
      trailing: Text(
          DateFormat.yMMMEd().format(taskDue) == DataOps.currentDate
              ? 'Due Today'
              : DateFormat.yMMMEd().format(taskDue),
          style: ts(context).bodySmall),
      children: [
        TaskBox(
            child: ListTile(
          title: SelectableText(taskDes, style: ts(context).titleMedium),
        ))
      ],
    );
  }
}

class CompletedList extends StatelessWidget {
  const CompletedList(
      {super.key,
      required this.taskDone,
      required this.taskName,
      required this.taskID});

  final taskDone;
  final taskName;
  final taskID;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        contentPadding: const EdgeInsets.all(15),
        leading: InkWell(
          onTap: () {
            bool done = taskDone;
            String id = taskID;
            DataOps.updateTodo(id, done);
          },
          child: CircleAvatar(
            backgroundColor: Colors.greenAccent[100],
            radius: 12,
            child: const Icon(
              Icons.check,
              color: Colors.teal,
            ),
          ),
        ),
        title: Text(taskName, style: ts(context).labelSmall),
        trailing: IconButton(
            onPressed: () => DataOps.removeTodo(taskID),
            icon: const Icon(Icons.delete, color: Colors.red, size: 28)));
  }
}
