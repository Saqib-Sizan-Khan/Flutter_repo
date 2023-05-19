import 'package:flutter/material.dart';
import 'package:test_etl1/demoUI.dart';
import 'package:test_etl1/gridview.dart';
import 'package:test_etl1/homepage.dart';
import 'package:test_etl1/homepage2.dart';
import 'package:test_etl1/listview.dart';
import 'package:test_etl1/listTile.dart';
import 'package:test_etl1/my_stack.dart';
import 'package:test_etl1/slider.dart';
import 'package:test_etl1/demoUI2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DemoUI2(),
    );
  }
}





