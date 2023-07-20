import 'package:flutter/material.dart';

class TaskBox extends StatelessWidget {
  const TaskBox({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        decoration: BoxDecoration(
            color: Theme.of(context).primaryColor, borderRadius: BorderRadius.circular(15)),
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
