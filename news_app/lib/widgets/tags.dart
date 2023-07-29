import 'package:flutter/material.dart';

class NewsTags extends StatelessWidget {
  NewsTags({super.key, required this.tagName});

  String tagName;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (tagName.length as double)*7,
      height: 17,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
      decoration: ShapeDecoration(
          color: tagName == 'Breaking News'
              ? Color(0x19F1582C)
              : Color(0x19494949),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
      child: Text(tagName,
          style: TextStyle(
              fontSize: 9,
              color: tagName == 'Breaking News'
                  ? Color(0xFFF1582C)
                  : Color(0xFF494949),
              fontWeight: FontWeight.w400)),
    );
  }
}
