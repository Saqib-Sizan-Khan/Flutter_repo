import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewsTags extends StatelessWidget {
  const NewsTags(
      {super.key,
      required this.tagName,
      this.textColor = const Color(0xFF494949)});

  final String tagName;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Chip(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      backgroundColor: tagName == 'Breaking News'
          ? const Color(0x19F1582C)
          : textColor == const Color(0xFFFFFFFF)
              ? Colors.transparent.withOpacity(0.6)
              : const Color(0x19494949),
      label: Text(tagName,
          style: TextStyle(
              fontSize: 9.sp, color: textColor, fontWeight: FontWeight.w400)),
    );
  }
}
