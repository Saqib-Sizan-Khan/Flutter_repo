import 'package:flutter/material.dart';

class NewsTags extends StatelessWidget {
  NewsTags({super.key, required this.tagName, this.textColor = 0xFF494949});

  String tagName;
  dynamic textColor;

  @override
  Widget build(BuildContext context) {
    return Chip(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      backgroundColor: tagName == 'Breaking News'
          ? Color(0x19F1582C)
          : textColor == 0xFFFFFFFF
              ? Colors.white.withOpacity(0.1)
              : Color(0x19494949),
      label: Text(tagName,
          style: TextStyle(
              fontSize: 9,
              color: Color(textColor),
              fontWeight: FontWeight.w400)),
    );
  }
}
