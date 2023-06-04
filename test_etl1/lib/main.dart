import 'package:flutter/material.dart';
import 'package:test_etl1/Finger_Tab_Battle/Game_UI.dart';
import 'package:test_etl1/Real_Estated_App/rea_home_page.dart';
import 'package:test_etl1/Sports_App/sports_league_UI.dart';
import 'package:test_etl1/Sports_App/sports_bottom_nav.dart';
import 'package:test_etl1/Sports_App/sports_league_UI.dart';
import 'package:test_etl1/StateFull_Widgets/count_UI.dart';
import 'package:test_etl1/StateFull_Widgets/dashboardUI.dart';
import 'package:test_etl1/Sports_App/sports_club_UI.dart';
import 'package:test_etl1/Sports_App/sports_level_UI.dart';
import 'package:test_etl1/Task_Management_App/home_page.dart';
import 'package:test_etl1/Task_Management_App/start_page.dart';
import 'package:test_etl1/UI_Design/demoUI2.dart';
import 'package:test_etl1/UI_Design/demoUI.dart';
import 'package:test_etl1/UI_Design/Progress_Indicator.dart';
import 'package:test_etl1/UI_Design/invoice_sendUI.dart';
import 'package:test_etl1/UI_Design/messenger_chats_UI.dart';
import 'package:test_etl1/UI_Design/login_UI.dart';
import 'package:test_etl1/UI_Design/gridview.dart';
import 'package:test_etl1/UI_Design/homepage.dart';
import 'package:test_etl1/UI_Design/homepage2.dart';
import 'package:test_etl1/UI_Design/listview.dart';
import 'package:test_etl1/UI_Design/listTile.dart';
import 'package:test_etl1/UI_Design/my_stack.dart';
import 'package:test_etl1/UI_Design/slider.dart';
import 'package:test_etl1/UI_Design/messenger_stories_UI.dart';
import 'package:test_etl1/UI_Design/text_field.dart';
import 'package:test_etl1/WhatsApp_UI/wp_UI.dart';

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
      home: Home_Page(),
    );
  }
}





