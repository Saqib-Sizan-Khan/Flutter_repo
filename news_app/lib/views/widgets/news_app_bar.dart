import 'package:flutter/material.dart';
import 'images.dart';

class NewsAppBar extends StatelessWidget implements PreferredSizeWidget {
  const NewsAppBar(
      {super.key, this.preferredSize = const Size.fromHeight(80.0)});

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFF494949),
      iconTheme: const IconThemeData(color: Colors.white),
      toolbarHeight: 94,
      title: const Padding(
          padding: EdgeInsets.only(left: 10),
          child: Logo(name: 'dhakaLive_logo_dark.png', scale: 2)),
      actions: const [
        Padding(
            padding: EdgeInsets.only(right: 16),
            child: Logo(name: 'bell_logo.png', scale: 0.8))
      ],
    );
  }
}
