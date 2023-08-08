import 'package:flutter/material.dart';

class NewsTags extends StatelessWidget {
  NewsTags({super.key, required this.tagName, this.textColor = const Color(0xFF494949)});

  String tagName;
  Color textColor;

  @override
  Widget build(BuildContext context) {
    return Chip(
      labelPadding: const EdgeInsets.all(0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      backgroundColor: tagName == 'Breaking News'
          ? const Color(0x19F1582C)
          : textColor == const Color(0xFFFFFFFF)
              ? Colors.transparent.withOpacity(0.6)
              : const Color(0x19494949),
      label: Text(tagName,
          style: TextStyle(
              fontSize: 9,
              color: textColor,
              fontWeight: FontWeight.w400)),
    );
  }
}
