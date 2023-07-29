import 'package:flutter/material.dart';

class Photo extends StatelessWidget {
  Photo({super.key, required this.name, this.scale = 2.5});

  String name;
  double scale;

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/images/$name', scale: scale);
  }
}
