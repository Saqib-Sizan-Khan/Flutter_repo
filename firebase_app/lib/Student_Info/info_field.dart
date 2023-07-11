import 'package:flutter/material.dart';

class InfoField extends StatelessWidget {
  InfoField({super.key, required this.fieldName, required this.textEditingController});

  String fieldName;
  TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: TextField(
        controller: textEditingController,
        style: TextStyle(
            fontSize: 24,
            color: Theme.of(context).colorScheme.secondary,
            fontWeight: FontWeight.w500),
        decoration: InputDecoration(
          labelText: fieldName,
          labelStyle: const TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
          enabledBorder: OutlineInputBorder(
            borderSide:
                BorderSide(width: 3, color: Theme.of(context).primaryColor),
            borderRadius: BorderRadius.circular(30),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(width: 3, color: Theme.of(context).primaryColor),
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }
}
