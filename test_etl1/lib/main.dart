import 'package:flutter/material.dart';
import 'package:test_etl1/demoUI2.dart';
import 'package:test_etl1/demoUI.dart';
import 'package:test_etl1/Progress_Indicator.dart';
import 'package:test_etl1/messenger_chats_UI.dart';
import 'package:test_etl1/login_UI.dart';
import 'package:test_etl1/gridview.dart';
import 'package:test_etl1/homepage.dart';
import 'package:test_etl1/homepage2.dart';
import 'package:test_etl1/listview.dart';
import 'package:test_etl1/listTile.dart';
import 'package:test_etl1/my_stack.dart';
import 'package:test_etl1/slider.dart';
import 'package:test_etl1/messenger_stories_UI.dart';
import 'package:test_etl1/text_field.dart';
import 'package:test_etl1/wp_UI.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DemoUI2(),
    );
  }
}





